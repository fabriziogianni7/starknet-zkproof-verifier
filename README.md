# starknet-zkproof-verifier

This repo shows how to verify zk-SNARKs on starknet using [circom](https://docs.circom.io/) and [garaga](https://felt.gitbook.io/garaga)

there is one [folder](https://github.com/fabriziogianni7/starknet-zkproof-verifier/tree/master/general-zk-verification-example) with a general example and another folder tryng to implement [tornado cash](https://github.com/tornadocash) on Starknet

### Folder general-zk-verification-example

In this folder I demonstrate how to use circuits to create and verify zk SNARKs on starknet.

Please, find the documentatiodeployed contract addresses below

<details>
<summary>All the steps necessary to verify a zk proof on Starknet</summary>

> For Nethermind team: addresses of the deployed contracts

> Verifier [0x05a45ee09946804dfe21c3da0448cd9efcd6971d3eed4efacc866e17f1d38f2d](https://sepolia.voyager.online/contract/0x05a45ee09946804dfe21c3da0448cd9efcd6971d3eed4efacc866e17f1d38f2d)

## create a circuit:

create a file called multiplier.circom with the following code:

```c++
pragma circom 2.0.0;

/_This circuit template checks that c is the multiplication of a and b._/

template Multiplier2 () {

// Declaration of signals.
 signal input a;
 signal input b;
 signal output c;

// Constraints.
 c <== a \* b;
}

component main = Multiplier2();

```

then compile it

```bash
circom multiplier.circom --r1cs --wasm --sym --c
```

generate witness (the witness is set of inputs, intermediate signals, and output):

```bash
cd multiplier_js && node generate_witness.js multiplier.wasm input.json witness.wtns
```

we'll use the witness to generate the actual proof

### trusted setup:

powers of tau:

```bash
snarkjs powersoftau new bn128 12 pot12_0000.ptau -v
```

ceremony:

```bash
snarkjs powersoftau contribute pot12_0000.ptau pot12_0001.ptau --name="First contribution" -v
```

phase 2:

```bash
snarkjs powersoftau prepare phase2 pot12_0001.ptau pot12_final.ptau -v
```

generating .zkey

```bash
snarkjs groth16 setup multiplier.r1cs pot12_final.ptau multiplier_0000.zkey
```

contributing to phase 2 of ceremony:

```bash
snarkjs zkey contribute multiplier_0000.zkey multiplier_0001.zkey --name="1st Contributor Name" -v
```

export verification key:

```bash
snarkjs zkey export verificationkey multiplier_0001.zkey verification_key.json
```

once the witness is computed and the trusted setup is already executed, we can generate a zk-proof associated to the circuit and the witness:
(copy witness.wtns to from multiplier_js folder)

```bash
snarkjs groth16 prove multiplier_0001.zkey witness.wtns proof.json public.json
```

## Verify proof on Starknet

### Install Garaga

install garaga:

> to install garaga, follow these steps: https://github.com/keep-starknet-strange/garaga?tab=readme-ov-file#quickstart--deploying-a-snark-verifier-on-starknet

generate verifier contracts

```bash
garaga gen --vk verification_key.json --system groth16
```

## use sepolia to deploy the verifier

export starknet rpc

```bash
export STARKNET_RPC="https://starknet-sepolia.public.blastapi.io/rpc/v0_7"
```

compile contracts

```bash
scarb build
```

deploy new account account

```bash
starkli signer keystore new keystore.json # do it if you don't have a keystore yet
export STARKNET_KEYSTORE="/path/to/keysore/keystore.json"
starkli account oz init account.json
starkli account deploy account.json

```

> you need to send money to the new deployed account, in order to declare and deploy the contract

declare contract:

```bash
starknet-verifier % starkli declare target/dev/starknet_verifier_Groth16VerifierBN254.contract_class.json --compiler-version 2.7.1 --account account.json --max-fee-raw 28933655926062819
#class hash: 0x06b7a9973d468fe9cd9fcd2548d04a0acf1b2656ead771ebc2a1d4efda60adbe
```

deploy contract:

```bash
starkli deploy 0x06b7a9973d468fe9cd9fcd2548d04a0acf1b2656ead771ebc2a1d4efda60adbe
# deployed: 0x05a45ee09946804dfe21c3da0448cd9efcd6971d3eed4efacc866e17f1d38f2d
```

generate calldata (verify proof):

```bash
garaga verify-onchain --system groth16 --contract-address 0x05a45ee09946804dfe21c3da0448cd9efcd6971d3eed4efacc866e17f1d38f2d --vk verification_key.json --proof proof.json --public-inputs public.json --env-file .secrets --network sepolia
```

</details>

### Folder starknado-cash

In this folder I demonstrate how to send private transaction in a tornado-cash style on starknet using zk-SNARKs

Please, find the documentation and deployed contract addresses below

<details>
<summary>See how starknado-cash can work on starknet</summary>

# starknado cash

> For Nethermind team: addresses of the deployed contracts

> Verifier [0x03fccef14896283163799b884d2aa2ca85af2b84c012bf99cccfe6cbc4ef3c17](https://sepolia.voyager.online/contract/0x03fccef14896283163799b884d2aa2ca85af2b84c012bf99cccfe6cbc4ef3c17)

> Pool [0x0239d646891ee20f88e3f611f8acb627cf3a2195893b423ba2da6a021bf0a6bc](https://sepolia.voyager.online/contract/0x0239d646891ee20f88e3f611f8acb627cf3a2195893b423ba2da6a021bf0a6bc#accountCalls)

If you already have garaga installed, you can proceed with starknado-cash

<details>
<summary>Compiling the circuit (It's similar to the process described in the section above)</summary>

```c++
pragma circom 2.0.0;

include "circomlib/circuits/poseidon.circom";

template Withdraw() {
    // Inputs
    signal input commitmentHash;     // Commitment stored on-chain
    signal input nullifier;          // User's secret (nullifier)

    // Output
    signal output validWithdrawal;   // Output whether the withdrawal is valid

    // Constraints
    // Instantiate the Poseidon hash function component
    signal computedCommitment;
    component poseidon = Poseidon(1);  // Poseidon with 1 input signal

    // Feed the nullifier to the Poseidon hash function
    poseidon.inputs[0] <== nullifier;

    // Get the computed commitment (output from Poseidon hash)
    computedCommitment <== poseidon.out;

    // Ensure the computed commitment matches the on-chain commitment
    signal difference;
    difference <== computedCommitment - commitmentHash;

    // Check if difference is zero by using a quadratic constraint
    validWithdrawal <== 1 - difference * difference;  // If difference is 0, validWithdrawal will be 1
}

component main {public [commitmentHash]} = Withdraw();

```

## compile circuit:

`circom withdraw.circom --r1cs --wasm --sym --c`

## generate witness (set of inputs, intermediate signals, and output):

access folder with generated files (go here to generate hash https://poseidon-hash.online/)
`cd withdraw_js`
`node generate_witness.js withdraw.wasm input.json witness.wtns`

we'll use the witness to generate the actual proof

we need a trusted setup: (go back 1 folder)

## powers of tau

`snarkjs powersoftau new bn128 12 pot12_0000.ptau -v`

## ceremony

`snarkjs powersoftau contribute pot12_0000.ptau pot12_0001.ptau --name="First contribution" -v`

## phase 2

`snarkjs powersoftau prepare phase2 pot12_0001.ptau pot12_final.ptau -v`

## generating .zkey

`snarkjs groth16 setup withdraw.r1cs pot12_final.ptau withdraw_0000.zkey`

## contributing to phase 2 of ceremony

`snarkjs zkey contribute withdraw_0000.zkey withdraw_0001.zkey --name="1st Contributor Name" -v`

## export verification key:

`snarkjs zkey export verificationkey withdraw_0001.zkey verification_key.json`

## generate zk proof

once the witness is computed and the trusted setup is already executed, we can generate a zk-proof associated to the circuit and the witness:
(copy witness.wtns to from multiplier_js folder)
`snarkjs groth16 prove withdraw_0001.zkey witness.wtns proof.json public.json`

</details>

## generate verifier

```bash
garaga gen --vk verification_key.json --system groth16
cd to the generated cairo project
scarb build
```

## declare and deploy verifier

```bash
starkli declare target/dev/starknado_zk_2_Groth16VerifierBN254.contract_class.json --compiler-version 2.7.1 --account account.json --max-fee-raw 22195018311634378 --keystore keystore.json
#class hash: 0x07ec0b2aa08e4cd748ae9aaba879836484e4b2c8d8834e46ca5bef321f9d37c3
```

```bash
starkli deploy 0x07ec0b2aa08e4cd748ae9aaba879836484e4b2c8d8834e46ca5bef321f9d37c3 --account account.json --keystore keystore.json`
#deployed address: 0x03fccef14896283163799b884d2aa2ca85af2b84c012bf99cccfe6cbc4ef3c17
```

```bash
cd ..
garaga verify-onchain --system groth16 --contract-address 0x03fccef14896283163799b884d2aa2ca85af2b84c012bf99cccfe6cbc4ef3c17 --vk verification_key.json --proof proof.json --public-inputs public.json --env-file .secrets --network sepolia
```

## declare and deploy pool contract

declare:

```bash
starkli declare target/dev/starknado_zk_2_Pool.contract_class.json --account account.json --keystore keystore.json
#class hash: 0x004dd2b672cac7e7fb91f96eb272faf86e81254c80ea763f5d72d583e6d3753d
```

deploy:

```bash
#class hash, token address-I use STRK,verifier contract
starkli deploy 0x004dd2b672cac7e7fb91f96eb272faf86e81254c80ea763f5d72d583e6d3753d 0x04718f5a0Fc34cC1AF16A1cdee98fFB20C31f5cD61D6Ab07201858f4287c938D 0x03fccef14896283163799b884d2aa2ca85af2b84c012bf99cccfe6cbc4ef3c17 --account account.json --keystore keystore.json
#contract deployed!!!
#0x0239d646891ee20f88e3f611f8acb627cf3a2195893b423ba2da6a021bf0a6bc
```

## generate calldata

You need to run this script: https://github.com/keep-starknet-strange/garaga/blob/main/hydra/garaga/starknet/groth16_contract_generator/calldata.py

## call deposit

```bash
starkli invoke 0x0239d646891ee20f88e3f611f8acb627cf3a2195893b423ba2da6a021bf0a6bc deposit <YOUR_COMMITMEN_HASH> <YOUR_GEN_CALLDATA> 1 -account account.json --keystore keystore.json
```

## call withdraw

commitmenthash: Span<felt252>, amount: u256, secret: felt252

```bash
starkli invoke 0x0239d646891ee20f88e3f611f8acb627cf3a2195893b423ba2da6a021bf0a6bc withdraw  <YOUR_GEN_CALLDATA>  1 <YOUR_COMMITMEN_HASH>  -account account.json --keystore keystore.json
```

</details>
