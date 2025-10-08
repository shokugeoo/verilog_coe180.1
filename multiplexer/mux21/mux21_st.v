module mux21_st(
input logic i0, i1, s,
output logic y
);
logic net1, net2, net3;
// Use gate modules from previous labs
not_gate g1(.a(s), .y(net1)); // net1 = ~s
and_gate g2(.a(i1), .b(s), .y(net2)); // net2 = i1 & s
and_gate g3(.a(i0), .b(net1), .y(net3)); // net3 = i0 & ~s
or_gate g4(.a(net3), .b(net2), .y(y)); // y = net3 | net2
endmodule
