module half_sub_df (
    input  logic a, b,
    output logic diff, borrow
);
    // Dataflow model
    assign diff   = a ^ b;
    assign borrow = (~a) & b;
endmodule
