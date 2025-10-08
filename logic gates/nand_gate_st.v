//file: nand_gate_st.v
module nand_gate_st (
    input  a,
    input  b,
    output y
);

    // Instantiate a built-in 'nand' gate primitive
    nand U1 (y, a, b);

endmodule