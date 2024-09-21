# Starknet zkProof Verifier


<p align="center">
  <img src="https://github.com/fabriziogianni7/starknet-zkproof-verifier/blob/master/sn-verifier-logo.png" alt="sn-verifier-logo" />
</p>

This repository demonstrates how to verify zk-SNARKs on Starknet using [Circom](https://docs.circom.io/) and [Garaga](https://felt.gitbook.io/garaga).

It contains:
- A [general example](https://github.com/fabriziogianni7/starknet-zkproof-verifier/tree/master/general-zk-verification-example) of zk-SNARK verification.
- An implementation of private transaction in [Tornado Cash](https://github.com/tornadocash) fashion on Starknet.

---

## Table of Contents
- [General zk-SNARK Verification Example](#general-zk-snark-verification-example)
  - [Create a Circuit](#create-a-circuit)
  - [Generate Witness](#generate-witness)
  - [Trusted Setup](#trusted-setup)
  - [Generate zk-SNARK Proof](#generate-zk-snark-proof)
  - [Verify zk-SNARK Proof on Starknet](#verify-zk-snark-proof-on-starknet)
- [Starknado Cash](#starknado-cash)
  - [Starknado cash user story](#starknado-cash-user-story)
  - [Compiling the Circuit](#compiling-the-circuit)
  - [Generate zk-SNARK Proof](#generate-zk-snark-proof-1)
  - [Verifier Deployment](#verifier-deployment)
  - [Pool Contract Deployment](#pool-contract-deployment)
  - [Call Deposit](#call-deposit)
  - [Call Withdraw](#call-withdraw)

---

## General zk-SNARK Verification Example

In this section, we demonstrate how to use circuits to create and verify zk-SNARKs on Starknet.

### Create a Circuit

1. Create a file called `multiplier.circom` with the following code:

    ```c++
    pragma circom 2.0.0;

    template Multiplier2 () {
      signal input a;
      signal input b;
      signal output c;

      c <== a * b;
    }

    component main = Multiplier2();
    ```

2. Compile the circuit:

    ```bash
    circom multiplier.circom --r1cs --wasm --sym --c
    ```

### Generate Witness

1. Navigate to the generated JS folder and generate the witness (a set of inputs, intermediate signals, and outputs):

    ```bash
    cd multiplier_js
    node generate_witness.js multiplier.wasm input.json witness.wtns
    ```

### Trusted Setup

1. Initialize the powers of tau:

    ```bash
    snarkjs powersoftau new bn128 12 pot12_0000.ptau -v
    ```

2. Contribute to the ceremony:

    ```bash
    snarkjs powersoftau contribute pot12_0000.ptau pot12_0001.ptau --name="First contribution" -v
    ```

3. Prepare for phase 2:

    ```bash
    snarkjs powersoftau prepare phase2 pot12_0001.ptau pot12_final.ptau -v
    ```

4. Generate the `.zkey`:

    ```bash
    snarkjs groth16 setup multiplier.r1cs pot12_final.ptau multiplier_0000.zkey
    ```

5. Contribute to phase 2:

    ```bash
    snarkjs zkey contribute multiplier_0000.zkey multiplier_0001.zkey --name="1st Contributor" -v
    ```

6. Export the verification key:

    ```bash
    snarkjs zkey export verificationkey multiplier_0001.zkey verification_key.json
    ```

### Generate zk-SNARK Proof

1. Generate the zk-SNARK proof:

    ```bash
    snarkjs groth16 prove multiplier_0001.zkey witness.wtns proof.json public.json
    ```

### Verify zk-SNARK Proof on Starknet

1. Install Garaga by following the [Garaga installation guide](https://github.com/keep-starknet-strange/garaga?tab=readme-ov-file#quickstart--deploying-a-snark-verifier-on-starknet).

2. Generate the verifier contracts:

    ```bash
    garaga gen --vk verification_key.json --system groth16
    ```

3. Compile the contracts:

    ```bash
    scarb build
    ```

4. Deploy a new account:

    ```bash
    starkli signer keystore new keystore.json
    starkli account oz init account.json
    starkli account deploy account.json
    ```

5. Declare the contract:

    ```bash
    starkli declare target/dev/starknet_verifier_Groth16VerifierBN254.contract_class.json --compiler-version 2.7.1 --account account.json --max-fee-raw 28933655926062819
    ```

6. Deploy the contract:

    ```bash
    starkli deploy 0x06b7a9973d468fe9cd9fcd2548d04a0acf1b2656ead771ebc2a1d4efda60adbe
    ```

7. Verify the proof on-chain:

    ```bash
    garaga verify-onchain --system groth16 --contract-address 0x05a45ee09946804dfe21c3da0448cd9efcd6971d3eed4efacc866e17f1d38f2d --vk verification_key.json --proof proof.json --public-inputs public.json --env-file .secrets --network sepolia
    ```

---

## Starknado Cash

Starknado Cash demonstrates how to send private transactions on Starknet using zk-SNARKs in a Tornado Cash-like style. 

### Starknado cash user story
- user A deposit STRK in pool.cairo, providing a commitment hash derived from a secret (possibly made off-chain with a [tool like that](https://poseidon-hash.online/))
- user A generate proof with commitment hash as public input and secret as private input
- user A send proof to user B
- user B uses commitment hash and proof to withdraw the tokens

### Compiling the Circuit

1. Create a `withdraw.circom` file with the following content:

    ```c++
    pragma circom 2.0.0;
    include "circomlib/circuits/poseidon.circom";

    template Withdraw() {
      signal input commitmentHash;
      signal input nullifier;
      signal output validWithdrawal;

      signal computedCommitment;
      component poseidon = Poseidon(1);
      poseidon.inputs[0] <== nullifier;
      computedCommitment <== poseidon.out;

      signal difference;
      difference <== computedCommitment - commitmentHash;
      validWithdrawal <== 1 - difference * difference;
    }

    component main {public [commitmentHash]} = Withdraw();
    ```

2. Compile the circuit:

    ```bash
    circom withdraw.circom --r1cs --wasm --sym --c
    ```

3. Generate the witness:

    ```bash
    cd withdraw_js
    node generate_witness.js withdraw.wasm input.json witness.wtns
    ```

### Generate zk-SNARK Proof

1. Follow the same trusted setup and `.zkey` generation steps as described in the [General zk-SNARK Verification Example](#trusted-setup).

2. Generate the zk-SNARK proof:

    ```bash
    snarkjs groth16 prove withdraw_0001.zkey witness.wtns proof.json public.json
    ```

### Verifier Deployment

1. Generate the verifier contract:

    ```bash
    garaga gen --vk verification_key.json --system groth16
    ```

2. Compile and declare the contract:

    ```bash
    starkli declare target/dev/starknado_zk_2_Groth16VerifierBN254.contract_class.json --compiler-version 2.7.1 --account account.json --max-fee-raw 22195018311634378
    ```

3. Deploy the verifier contract:

    ```bash
    starkli deploy 0x07ec0b2aa08e4cd748ae9aaba879836484e4b2c8d8834e46ca5bef321f9d37c3
    ```

### Pool Contract Deployment

1. Declare the pool contract:

    ```bash
    starkli declare target/dev/starknado_zk_2_Pool.contract_class.json --account account.json
    ```

2. Deploy the pool contract:

    ```bash
    starkli deploy 0x004dd2b672cac7e7fb91f96eb272faf86e81254c80ea763f5d72d583e6d3753d 0x04718f5a0Fc34cC1AF16A1cdee98fFB20C31f5cD61D6Ab07201858f4287c938D 0x03fccef14896283163799b884d2aa2ca85af2b84c012bf99cccfe6cbc4ef3c17
    ```

### Call Deposit

1. Call the `deposit` method:

    ```bash
    starkli invoke 0x0239d646891ee20f88e3f611f8acb627cf3a2195893b423ba2da6a021bf0a6bc deposit <YOUR_COMMITMEN_HASH> <YOUR_GEN_CALLDATA> 1 --account account.json
    ```

### Call Withdraw

1. Call the `withdraw` method:

    ```bash
    starkli invoke 0x0239d646891ee20f88e3f611f8acb627cf3a2195893b423ba2da6a021bf0a6bc withdraw <YOUR_GEN_CALLDATA> 1 --account account.json
    ```

---
