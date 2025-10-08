`timescale 1ns / 1ps
module mux81_df(
  input  logic i0, i1, i2, i3, i4, i5, i6, i7,
  input  logic [2:0] s,
  output logic y
);

  // Dataflow implementation using continuous assignment
  assign y = (~s[2] & ~s[1] & ~s[0] & i0) |
             (~s[2] & ~s[1] &  s[0] & i1) |
             (~s[2] &  s[1] & ~s[0] & i2) |
             (~s[2] &  s[1] &  s[0] & i3) |
             ( s[2] & ~s[1] & ~s[0] & i4) |
             ( s[2] & ~s[1] &  s[0] & i5) |
             ( s[2] &  s[1] & ~s[0] & i6) |
             ( s[2] &  s[1] &  s[0] & i7);

endmodule
