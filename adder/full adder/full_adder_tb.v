`timescale 1ns/1ps
module full_adder_tb;
    logic a, b, cin;
    logic sum_df, cout_df;
    logic sum_bh, cout_bh;
    logic sum_st, cout_st;

    // Instantiate each version
    full_adder_df df(.a(a), .b(b), .cin(cin), .sum(sum_df), .cout(cout_df));
    full_adder_bh bh(.a(a), .b(b), .cin(cin), .sum(sum_bh), .cout(cout_bh));
    full_adder_st st(.a(a), .b(b), .cin(cin), .sum(sum_st), .cout(cout_st));

    initial begin
        $dumpfile("full_adder_tb.vcd");
        $dumpvars(0, full_adder_tb);
        $display("Testing Full Adder: Dataflow || Behavioral || Structural");
        $display("Time  | a b cin | sum_df cout_df | sum_bh cout_bh | sum_st cout_st");

        // Apply all 8 combinations
        for (int i = 0; i < 8; i++) begin
            {a, b, cin} = i;
            #10;
            $display("%4t | %b %b  %b  |   %b      %b    |   %b      %b    |   %b      %b",
                     $time, a, b, cin,
                     sum_df, cout_df,
                     sum_bh, cout_bh,
                     sum_st, cout_st);
        end

        $finish;
    end
endmodule
