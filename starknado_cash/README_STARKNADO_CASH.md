# starknado cash

> For Nethermind team: addresses of the deployed contracts

> Verifier [0x03fccef14896283163799b884d2aa2ca85af2b84c012bf99cccfe6cbc4ef3c17](https://sepolia.voyager.online/contract/0x03fccef14896283163799b884d2aa2ca85af2b84c012bf99cccfe6cbc4ef3c17)

> Pool [0x0239d646891ee20f88e3f611f8acb627cf3a2195893b423ba2da6a021bf0a6bc](https://sepolia.voyager.online/contract/0x0239d646891ee20f88e3f611f8acb627cf3a2195893b423ba2da6a021bf0a6bc#accountCalls)

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
