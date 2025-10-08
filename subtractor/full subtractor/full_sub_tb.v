`timescale 1ns / 1ps
module full_sub_tb;
    logic a, b, bin;
    logic diff_df, bout_df;
    logic diff_bh, bout_bh;
    logic diff_st, bout_st;
    integer i;

    // Instantiate all models
    full_sub_df u1 (.a(a), .b(b), .bin(bin), .diff(diff_df), .bout(bout_df));
    full_sub_bh u2 (.a(a), .b(b), .bin(bin), .diff(diff_bh), .bout(bout_bh));
    full_sub_st u3 (.a(a), .b(b), .bin(bin), .diff(diff_st), .bout(bout_st));

    initial begin
        $dumpfile("full_sub_tb.vcd");
        $dumpvars(0, full_sub_tb);
        $display("Testing Full Subtractor");

        $monitor("t=%0t | a=%b b=%b bin=%b | DF: diff=%b bout=%b | BH: diff=%b bout=%b | ST: diff=%b bout=%b",
                 $time, a, b, bin,
                 diff_df, bout_df, diff_bh, bout_bh, diff_st, bout_st);

        for (i = 0; i < 8; i++) begin
            {a, b, bin} = i;
            #10;
        end
        $finish;
    end
endmodule
