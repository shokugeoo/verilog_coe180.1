// Design file: nor_gate_bh.v
module nor_gate_bh (
    input  a,
    input  b,
    output reg y
);

    always @(a or b) begin
        y = ~(a | b);
    end

endmodule