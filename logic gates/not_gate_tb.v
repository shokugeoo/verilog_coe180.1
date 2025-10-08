// Testbench file: not_gate_tb.v
`timescale 1ns / 1ps

module not_gate_tb;

    // Signal Declaration
    reg a;  // The input to the DUT is a 'reg'
    wire y; // The output from the DUT is a 'wire'

    // Instantiate the Design Under Test (DUT)
    //not_gate_df dut (.a(a),.y(y));

    // 2. Instantiate the Behavioral model
    not_gate_bh dut (.a(a), .y(y));

    // 3. Instantiate the Structural model
    // not_gate_st dut (.a(a), .y(y));

    // Stimulus and simulation control
    initial begin
        // Setup waveform dumping
        $dumpfile("not_gate_tb.vcd");
        $dumpvars(0, not_gate_tb);

        // Monitor signals in the console
        $monitor("Time=%0t ns | a=%b | y=%b", $time, a, y);

        // Apply test vectors
        a = 0; #10; // Test input '0'
        a = 1; #10; // Test input '1'

        // Finish the simulation
        $finish;
    end

endmodule