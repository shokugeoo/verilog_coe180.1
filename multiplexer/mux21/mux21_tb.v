`timescale 1ns / 1ps
module mux21_tb;

  logic i0, i1, s;
  logic y;

  // Instantiate DUT with wildcard connection
  mux21_df dut (.*);

  initial begin
    // Create VCD file for waveform
    $dumpfile("mux21_tb.vcd");
    $dumpvars(0, mux21_tb);

    // Monitor signal changes
    $monitor("Time=%0t | i0=%b i1=%b s=%b | y=%b", $time, i0, i1, s, y);

    // Test all input combinations
    for (int i = 0; i < 8; i++) begin
      {s, i1, i0} = i;  // Correct bit order: select first
      #10;
    end

    $finish;
  end
endmodule
