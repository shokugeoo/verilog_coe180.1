//file: nand_gate_df.v
module nand_gate_df (
    input  a,
    input  b,
    output y
);

    // Continuously assign the result of NOT (a AND b) to y
    assign y = ~(a & b);

endmodule