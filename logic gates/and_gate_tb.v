// Timescale Directive
`timescale 1ns / 1ps

// Module Declaration
module and_gate_tb;

// Signal Declaration
    reg a, b; // Inputs to DUT are 'reg'
    wire y;   // Outputs from DUT are 'wire'

// Instantiate the Design Under Test (DUT)
// --- IMPORTANT ---
// Instantiate ONLY ONE model by uncommenting the desired line.
//1. Dataflow
//and_gate_df dut (.a(a), .b(b), .y(y));
// 2. Behavioral
//and_gate_bh dut (.a(a), .b(b), .y(y));
// 3. Structural 
and_gate_st dut (.a(a), .b(b), .y(y));

initial begin
    // A. Setup waveform dumping
    $dumpfile("and_gate_tb.vcd"); // It's good practice to use the .vcd extension
    $dumpvars(0, and_gate_tb);

    // B. Monitor signals in the console
    $monitor("Time=%0t ns | a=%b | b=%b | y=%b", $time, a, b, y);

    // C. Apply test vectors (stimulus)
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    
    // D. Finish the simulation
    $finish;
end

endmodule