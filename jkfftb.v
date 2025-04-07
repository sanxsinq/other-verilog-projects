module jkfftb;
reg k, j, clk;
jkff jk0 (.k(k),
          .j(j),
          .clk(clk),
          .q(q)
        );
initial begin
  clk =0;
end
   
    always begin
     clk = ~clk;
     #10;
     end
    initial begin
      j <= 0;
      k <= 0;
      #10;
      j <= 0;
      k <= 1;
      #10;
      j <= 1;
      k <= 0;
      #10;
      j <= 1;
      k <= 1;
      #10;
      $finish;
    end
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, jkfftb);
    end
endmodule