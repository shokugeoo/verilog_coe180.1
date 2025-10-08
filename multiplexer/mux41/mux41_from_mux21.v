`timescale 1ns / 1ps

// 2:1 multiplexer module
module mux21_df(
  input  logic i0, i1, s,
  output logic y
);
  assign y = (s) ? i1 : i0;
endmodule


// 4:1 multiplexer built from three 2:1 MUXes
module mux41_from_mux21(
  input  logic i0, i1, i2, i3,
  input  logic [1:0] s,
  output logic y
);

  logic y0, y1; // intermediate outputs

  // Instantiate lower-level 2:1 MUXes
  mux21_df M1 (.i0(i0), .i1(i1), .s(s[0]), .y(y0));
  mux21_df M2 (.i0(i2), .i1(i3), .s(s[0]), .y(y1));

  // Final MUX selects between y0 and y1
  mux21_df M3 (.i0(y0), .i1(y1), .s(s[1]), .y(y));

endmodule
