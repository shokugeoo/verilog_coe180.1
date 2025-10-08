// Testbench file: xnor_gate_tb.v
`timescale 1ns / 1ps

module xnor_gate_tb;
    reg a, b;
    wire y;

    // --- IMPORTANT ---
    // Instantiate ONLY ONE model by uncommenting the desired line.

    // xnor_gate_df dut (.a(a), .b(b), .y(y));
    // xnor_gate_bh dut (.a(a), .b(b), .y(y));
    xnor_gate_st dut (.a(a), .b(b), .y(y));

    initial begin
        $dumpfile("xnor_gate_tb.vcd");
        $dumpvars(0, xnor_gate_tb);
        $monitor("Time=%0t ns | XNOR| a=%b | b=%b | y=%b", $time, a, b, y);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end
endmodule