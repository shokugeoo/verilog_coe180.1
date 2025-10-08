module full_sub_df (
    input  logic a, b, bin,
    output logic diff, bout
);
    assign diff = a ^ b ^ bin;
    assign bout = (~a & b) | (~(a ^ b) & bin);
endmodule
