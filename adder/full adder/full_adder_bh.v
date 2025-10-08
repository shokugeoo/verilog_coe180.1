module full_adder_bh (
    input  logic a, b, cin,
    output logic sum, cout
);
    always_comb begin
        {cout, sum} = a + b + cin;  
    end
endmodule
