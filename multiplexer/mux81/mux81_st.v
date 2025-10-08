`timescale 1ns / 1ps
module mux81_st(
  input  logic i0, i1, i2, i3, i4, i5, i6, i7,
  input  logic [2:0] s,
  output logic y
);

  // Internal signals for AND outputs
  logic a0, a1, a2, a3, a4, a5, a6, a7;

  // Structural modeling using gate-level connections
  assign a0 = i0 & ~s[2] & ~s[1] & ~s[0];
  assign a1 = i1 & ~s[2] & ~s[1] &  s[0];
  assign a2 = i2 & ~s[2] &  s[1] & ~s[0];
  assign a3 = i3 & ~s[2] &  s[1] &  s[0];
  assign a4 = i4 &  s[2] & ~s[1] & ~s[0];
  assign a5 = i5 &  s[2] & ~s[1] &  s[0];
  assign a6 = i6 &  s[2] &  s[1] & ~s[0];
  assign a7 = i7 &  s[2] &  s[1] &  s[0];

  // OR all product terms to get output
  assign y = a0 | a1 | a2 | a3 | a4 | a5 | a6 | a7;

endmodule
