`timescale 1ns / 1ps
module mux41_from_mux21_tb;

  logic i0, i1, i2, i3;
  logic [1:0] s;
  logic y;

  mux41_from_mux21 dut (.*);

  initial begin
    $dumpfile("mux41_from_mux21_tb.vcd");
    $dumpvars(0, mux41_from_mux21_tb);
    $monitor("Time=%0t | s=%b | i0=%b i1=%b i2=%b i3=%b | y=%b",
             $time, s, i0, i1, i2, i3, y);

    // Constant inputs
    i0 = 0; i1 = 1; i2 = 0; i3 = 1;

    // Cycle through all select values
    for (int k = 0; k < 4; k++) begin
      s = k;
      #10;
    end

    $finish;
  end
endmodule
