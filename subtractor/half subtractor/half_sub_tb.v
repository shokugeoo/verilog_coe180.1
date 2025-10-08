`timescale 1ns/1ps
module half_sub_tb;
    logic a, b;
    logic diff_df, borrow_df;
    logic diff_bh, borrow_bh;
    logic diff_st, borrow_st;

    // Instantiate the three versions
    half_sub_df df(.a(a), .b(b), .diff(diff_df), .borrow(borrow_df));
    half_sub_bh bh(.a(a), .b(b), .diff(diff_bh), .borrow(borrow_bh));
    half_sub_st st(.a(a), .b(b), .diff(diff_st), .borrow(borrow_st));

    initial begin
        $dumpfile("half_sub_tb.vcd");
        $dumpvars(0, half_sub_tb);
        $display("Time | a b | diff_df borrow_df | diff_bh borrow_bh | diff_st borrow_st");

        // Apply all 4 input combinations
        for (int i = 0; i < 4; i++) begin
            {a, b} = i;
            #10;
            $display("%4t | %b %b |    %b        %b    |    %b        %b    |    %b        %b",
                     $time, a, b,
                     diff_df, borrow_df,
                     diff_bh, borrow_bh,
                     diff_st, borrow_st);
        end
        $finish;
    end
endmodule
