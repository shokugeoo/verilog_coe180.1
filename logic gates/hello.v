module hello;
    initial #49 $finish;
    always begin
        $display("Helo World");
        #10;
    end
endmodule