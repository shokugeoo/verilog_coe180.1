//file: or_gate_bh.v
module or_gate_bh (
    input  a,
    input  b,
    output reg y // Output must be 'reg' when assigned in an 'always' block
);

    // This combinational 'always' block runs whenever 'a' or 'b' changes.
    always @(a or b) begin
        y = a | b; // The '|' is the bitwise OR operator
    end

endmodule