`timescale 1ns / 1ps
module mux41_tb;

  logic i0, i1, i2, i3;
  logic [1:0] s;
  logic y;

  // Instantiate one of the models
  // mux41_df dut (.*);
  // mux41_st dut (.*);
  mux41_bh dut (.*);

  initial begin
    // Create VCD file for waveform viewing
    $dumpfile("mux41_tb.vcd");
    $dumpvars(0, mux41_tb);

    // Display header and monitor signal changes
    $monitor("Time=%0t | s=%b | i0=%b i1=%b i2=%b i3=%b | y=%b",
             $time, s, i0, i1, i2, i3, y);

    // Set constant input values
    i0 = 0;
    i1 = 1;
    i2 = 0;
    i3 = 1;

    // Test each select value
    for (int k = 0; k < 4; k++) begin
      s = k;
      #10;
    end

    $finish;
  end
endmodule
