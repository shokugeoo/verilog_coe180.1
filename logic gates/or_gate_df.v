module or_gate_df (
    input  a,
    input  b,
    output y
);

    // Dataflow model: continuously assign the result of a OR b to y
    assign y = a | b;

endmodule