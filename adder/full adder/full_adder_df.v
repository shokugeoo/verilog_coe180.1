module full_adder_df (
    input  logic a, b, cin,
    output logic sum, cout
);
    // Dataflow: use continuous assignments with logic expressions
    assign sum  = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);
endmodule
