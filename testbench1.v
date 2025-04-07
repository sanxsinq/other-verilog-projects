module tb();
reg A,B;
wire S,C;
half_adder dut (
    .A(A),
    .B(B),
    .S(S),
    .C(C)
);
initial begin
  A = 1'b0;
  B = 1'b0;
  #100;

  A = 1'b0;
  B = 1'b1;
  #100;

  A = 1'b1;
  B = 1'b0;
  #100;

  A = 1'b1;
  B = 1'b1;
  #100;
  end
  initial begin
  $dumpfile("dump2.vcd");
  $dumpvars(0, tb); 
  end

endmodule