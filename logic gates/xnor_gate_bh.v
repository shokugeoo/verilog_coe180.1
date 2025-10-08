// Design file: xnor_gate_bh.v
module xnor_gate_bh (
    input  a,
    input  b,
    output reg y
);
    always @(a or b) begin
        y = ~(a ^ b); // Logic can also be expressed as NOT XOR
    end
endmodule