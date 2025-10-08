`timescale 1ns / 1ps
module mux41_st(
  input  logic i0, i1, i2, i3,
  input  logic [1:0] s,
  output logic y
);

  // Internal wires for AND outputs
  logic a0, a1, a2, a3;

  // Gate-level connections (structural modeling)
  assign a0 = i0 & ~s[1] & ~s[0];
  assign a1 = i1 & ~s[1] &  s[0];
  assign a2 = i2 &  s[1] & ~s[0];
  assign a3 = i3 &  s[1] &  s[0];

  assign y = a0 | a1 | a2 | a3;

endmodule
