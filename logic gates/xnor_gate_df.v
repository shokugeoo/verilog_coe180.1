// Design file: xnor_gate_df.v
module xnor_gate_df (
    input  a,
    input  b,
    output y
);
    // The '~^' or '^~' is the bitwise XNOR operator
    assign y = a ~^ b;
endmodule