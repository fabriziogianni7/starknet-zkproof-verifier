# All the steps necessary to verify a zk proof on Starknet

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
