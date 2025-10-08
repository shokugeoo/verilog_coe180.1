//file: and_gate_bh
module and_gate_bh (
    input  a,
    input  b,
    output reg y // Output must be 'reg' when assigned in an 'always' block
);

    // This combinational 'always' block runs whenever 'a' or 'b' changes.
    always @(a or b) begin
        y = a & b;
    end

endmodule