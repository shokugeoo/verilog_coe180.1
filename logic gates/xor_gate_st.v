// Design file: xor_gate_st.v
module xor_gate_st (
    input  a,
    input  b,
    output y
);

    // Instantiate a built-in 'xor' gate primitive
    xor U1 (y, a, b);

endmodule