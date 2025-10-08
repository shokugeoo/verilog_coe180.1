module half_sub_bh (
    input  logic a, b,
    output logic diff, borrow
);
    always_comb begin
        diff   = a ^ b;
        borrow = (~a) & b;
    end
endmodule
