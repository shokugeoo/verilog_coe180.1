// Design file: nor_gate_st.v
module nor_gate_st (
    input  a,
    input  b,
    output y
);

    // Instantiate a built-in 'nor' gate primitive
    nor U1 (y, a, b);

endmodule