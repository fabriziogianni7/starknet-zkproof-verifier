# starknado cash

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

HAsh:
public_inputs: ['1']
Transaction hash : 0x1367e42481093a9c688a4e1eb4b8830bcfe8f22ed1c338d18a7089fe064ccaa
Check it out on
https://sepolia.voyager.online/tx/0x1367e42481093a9c688a4e1eb4b8830bcfe8f22ed1c338d18a70
89fe064ccaa
