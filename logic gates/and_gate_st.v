// file: and_gate_st.v
module and_gate_st (
    input  a,
    input  b,
    output y
);

    // Instantiate a built-in 'and' gate primitive.
    // Syntax for primitives: gate_type instance_name (output, input1, input2, ...);
    // Note that the output port comes FIRST.
    and U1 (y, a, b);

endmodule