module tb();
reg A,B;
wire Y;
gate dut (
    .A(A),
    .B(B),
    .Y(Y)
);
initial begin
  A <= 1'b0;
  B <= 1'b0;
  #100;

  A <= 1'b0;
  B <= 1'b1;
  #100;

  A <= 1'b1;
  B <= 1'b0;
  #100;

  A <= 1'b1;
  B <= 1'b1;
  #100;
end
initial begin
 $dumpfile("dump1 .vcd");
 $dumpvars(0, tb);
end
endmodule
