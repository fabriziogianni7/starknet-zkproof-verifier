
// contract need to allow people to deposit and withdraw
// deposit: 
//  should receive the hash + amount maybe tokens
//  should add tokens to the contract,
//  should insert a hash in a mappinf: hash-> amount
//  should accept a secret and a hash
//  should verify the secret using the verifier (pass secret and hash)
// storage: the list of hashes
// constructor:
// should accept a token

#[starknet::interface]
trait IGroth16VerifierBN254<TContractState> {
    fn verify_groth16_proof_bn254(
        ref self: TContractState, full_proof_with_hints: Span<felt252>,
    ) -> bool;
}

#[starknet::interface]
trait IPool<TContractState> {
    fn deposit(
        ref self: TContractState, commitmenthash: felt252, span: Span<felt252>,
        amount: u256
    ) ;
    fn withdraw(
        ref self: TContractState, commitmenthash: Span<felt252>,  amount: u256, secret: felt252
    ) -> bool;
}

#[starknet::contract]
mod Pool {

use starknet::storage::StoragePointerReadAccess;
    use starknet::storage::{
        Map,StoragePathEntry,StoragePointerWriteAccess
    };
    use starknet::{ContractAddress, get_caller_address, get_contract_address};
    use openzeppelin::token::erc20::interface::{IERC20Dispatcher, IERC20DispatcherTrait};
    use super::{IGroth16VerifierBN254Dispatcher, IGroth16VerifierBN254DispatcherTrait};


    #[storage]
    struct Storage {
         pub commitment_hash_to_amount: Map::<felt252, u256>,
         pub transfer_token: IERC20Dispatcher,
         pub verifier_contract: IGroth16VerifierBN254Dispatcher,
    }

    #[constructor]
    fn constructor(
        ref self: ContractState,
        transfer_token: ContractAddress,
        verifier_contract: ContractAddress,
    ) {
        self.transfer_token.write(IERC20Dispatcher { contract_address: transfer_token });
        self.verifier_contract.write(IGroth16VerifierBN254Dispatcher { contract_address: verifier_contract });
       
    }

    #[abi(embed_v0)]
    impl Pool of super::IPool<ContractState> {
        
        // this function need to add commitment<->amount
        // transfer token from caller to this contract
        // commitmenthash is the hash
        fn deposit(ref self: ContractState, commitmenthash: felt252,span: Span<felt252>,  amount: u256) {

            self.commitment_hash_to_amount.entry(commitmenthash).write(amount);
            let caller = get_caller_address();
            let this = get_contract_address();
            self.transfer_token.read().transfer_from(caller, this, amount);
           
        }
        
        // should verify the secret.
        // should accept the amount, the commitmenthas and the secret
        // should invoke the verifier
        fn withdraw(ref self: ContractState, commitmenthash: Span<felt252>,  amount: u256, secret: felt252) -> bool{
            // TODO, make sure I cannot recall this with the same proof
            
            // let proof_data: Array<felt252> = array![
            //     'proof', // This is a short string constant, represented as a felt252
            //     0x8645981980787649023086883978738420856660271013038108762834452721572614684349_felt252 // This is a felt252 literal
            //     ];

            // Convert the array to a Span
            //    let proof_span: Span<felt252> = proof_data.span();
           let verifier_address: ContractAddress = self.verifier_contract.read().contract_address;
            // call verifier
            let return_value: bool = IGroth16VerifierBN254Dispatcher { contract_address:  verifier_address }.verify_groth16_proof_bn254(commitmenthash);

            return return_value;

            
        }
    }
}
