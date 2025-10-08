// Half Adder module
module half_adder (
    input  logic a, b,
    output logic sum, carry
);
    assign sum   = a ^ b;
    assign carry = a & b;
endmodule

// Full Adder Structural
module full_adder_st (
    input  logic a, b, cin,
    output logic sum, cout
);
    logic sum1, carry1, carry2;

    // First half adder
    half_adder ha1(.a(a), .b(b), .sum(sum1), .carry(carry1));

    // Second half adder
    half_adder ha2(.a(sum1), .b(cin), .sum(sum), .carry(carry2));

    // OR gate for final carry
    assign cout = carry1 | carry2;
endmodule
