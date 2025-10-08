// Testbench file: or_gate_tb.v
`timescale 1ns / 1ps

module or_gate_tb;

    reg a, b;
    wire y;

    // --- IMPORTANT ---
    // Instantiate ONLY ONE model by uncommenting the desired line.

    // 1. Instantiate the Behavioral model
    //or_gate_bh dut (.a(a), .b(b), .y(y));

    // 2. Instantiate the Structural model
     or_gate_st dut (.a(a), .b(b), .y(y));
    
    // 3. Instantiate the Dataflow model
    // or_gate_df dut (.a(a), .b(b), .y(y));


    // Stimulus block
    initial begin
        $dumpfile("or_gate_tb.vcd");
        $dumpvars(0, or_gate_tb);
        $monitor("Time=%0t ns | a=%b | b=%b | y=%b", $time, a, b, y);

        // Apply test vectors
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end

endmodule