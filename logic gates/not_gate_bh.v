//file: not_gate_bh.v
module not_gate_bh (
    input  a,
    output reg y // Output must be 'reg' when assigned in an 'always' block
);

    // This block runs whenever the input 'a' changes.
    always @(a) begin
        y = ~a; // The '~' is the bitwise NOT operator
    end

endmodule