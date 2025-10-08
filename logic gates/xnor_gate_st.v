// Design file: xnor_gate_st.v
module xnor_gate_st (
    input  a,
    input  b,
    output y
);
    // Instantiate a built-in 'xnor' gate primitive
    xnor U1 (y, a, b);
endmodule