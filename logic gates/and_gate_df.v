// file: and_gate_df.v
module and_gate_df (
    input  a,
    input  b,
    output y
);

    // Dataflow model: continuously assign the result of a & b to y
    assign y = a & b;

endmodule

