module half_sub_st (
    input  logic a, b,
    output logic diff, borrow
);
    logic nota;

    // Structural connections
    xor (diff, a, b);      // Difference = a XOR b
    not (nota, a);         // nota = ~a
    and (borrow, nota, b); // Borrow = ~a & b
endmodule
