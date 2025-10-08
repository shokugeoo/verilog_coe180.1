`timescale 1ns / 1ps
module mux81_tb;

  logic i0, i1, i2, i3, i4, i5, i6, i7;
  logic [2:0] s;
  logic y;

  // Instantiate one of the models
  // mux81_df dut (.*);
  // mux81_st dut (.*);
  mux81_bh dut (.*);

initial begin
  $dumpfile("mux81_tb.vcd");
  $dumpvars(0, mux81_tb);
  $monitor("Time=%0t | s=%b | y=%b", $time, s, y);

  // Set inputs to distinct values
  i0=0; i1=1; i2=0; i3=1; i4=0; i5=1; i6=0; i7=1;

  // Cycle through all select values
  for (int k = 0; k < 8; k++) begin
    s = k;
    #10;
  end

  $finish;
end

endmodule
