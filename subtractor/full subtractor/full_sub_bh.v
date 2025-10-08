module full_sub_bh (
    input  logic a, b, bin,
    output logic diff, bout
);
    always_comb begin
        diff = a ^ b ^ bin;
        bout = (~a & b) | (~(a ^ b) & bin);
    end
endmodule
