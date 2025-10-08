//file: not_gate_st.v
module not_gate_st (
    input  a,
    output y
);
    
    // Instantiate a built-in 'not' gate primitive.
    // Syntax: gate_type instance_name (output, input);
    // Note that the output port comes FIRST.
    not U1 (y, a);

endmodule