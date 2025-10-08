// Design file: xor_gate_df.v
module xor_gate_df (
    input  a,
    input  b,
    output y
);

    // Continuously assign the result of a XOR b to y
    assign y = a ^ b;

endmodule