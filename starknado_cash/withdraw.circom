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