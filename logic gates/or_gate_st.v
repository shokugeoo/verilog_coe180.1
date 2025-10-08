//file: or_gate_st.v
module or_gate_st (
    input  a,
    input  b,
    output y
);

    // Instantiate a built-in 'or' gate primitive.
    // Syntax: gate_type instance_name (output, input1, input2);
    // Note that the output port comes FIRST.
    or U1 (y, a, b);

endmodule