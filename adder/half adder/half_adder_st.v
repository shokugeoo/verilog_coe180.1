module half_adder_st (
input logic a, b,
output logic sum, carry
);
// Using gate primitives with
// explicit port connections
xor sum_gate (.a(a), .b(b), .z(sum));
and carry_gate (.a(a), .b(b), .z(carry));
endmodule