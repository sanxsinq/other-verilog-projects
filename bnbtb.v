module tb();
 reg reset, clk, A, B;
 wire Q,S;
bnb dut (
      .reset(reset),
      .clk(clk),
      .A(A),
      .B(B),
      .Q(Q),
      .S(S)
);
always begin
    clk <= 1'b0;
    #10;
    clk <= 1'b1;
    #10;
end
initial begin 
   reset <=1'b0;
   #10;
   reset <=1'b1;
   #10;
   A <= 1'b0;
   B <= 1'b0;
   #10;
   A <= 1'b0;
   B <= 1'b1;
   #10;
   A <= 1'b1;
   B <= 1'b0;
   #10;
   A <= 1'b1;
   B <= 1'b1;
   #10;
   $finish;
end
initial begin 
 $dumpfile("bnb.vcd");
 $dumpvars(0, tb);
end
endmodule