// Half subtractor used in structural model
module half_sub (
    input  logic a, b,
    output logic diff, borrow
);
    assign diff   = a ^ b;
    assign borrow = ~a & b;
endmodule

// Full subtractor built using two half subtractors
module full_sub_st (
    input  logic a, b, bin,
    output logic diff, bout
);
    logic d1, b1, d2, b2;

    half_sub hs1 (.a(a), .b(b),   .diff(d1), .borrow(b1));
    half_sub hs2 (.a(d1), .b(bin), .diff(d2), .borrow(b2));

    assign diff = d2;
    assign bout = b1 | b2;
endmodule
