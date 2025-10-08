//  file: nand_gate_bh.v
module nand_gate_bh (
    input  a,
    input  b,
    output reg y
);

    // This block runs whenever 'a' or 'b' changes
    always @(a or b) begin
        y = ~(a & b);
    end

endmodule