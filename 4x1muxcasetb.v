module tb();
reg [1:0] A,B,C,D;
reg [1:0] S;
wire Y;
mux dut(
     .A(A),
     .B(B),
     .C(C),
     .D(D),
     .S(S),
     .Y(Y)
);
initial begin 
     A <= 2'b00;
     B <= 2'b01;
     C <= 2'b10;
     D <= 2'b11;
    #20;
    
    S <= 2'b00;
    #10;
    S <= 2'b01;
    #10;
    S <= 2'b10;
    #10;
    S <= 2'b11;
    #10;
end
initial begin
  $dumpfile("muxcase.vcd");
  $dumpvars( 0, tb);
  end
endmodule


