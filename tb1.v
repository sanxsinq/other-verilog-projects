module tb();
reg Y_0,Y_1,Y_2,Y_3;
wire A0,A1;
encr dut(
    .Y_0(Y_0),
    .Y_1(Y_1),
    .Y_2(Y_2),
    .Y_3(Y_3),
    .A0(A0),
    .A1(A1)
);

initial
begin
Y_3 <= 1'b0;
Y_2 <= 1'b0;
Y_1 <= 1'b0;
Y_0 <= 1'b1;
#150;

Y_3 <= 1'b0;
Y_2 <= 1'b0;
Y_1 <= 1'b1;
Y_0 <= 1'b0;
#150;

Y_3 <= 1'b0;
Y_2 <= 1'b1;
Y_1 <= 1'b0;
Y_0 <= 1'b0;
#150;

Y_3 <= 1'b1;
Y_2 <= 1'b0;
Y_1 <= 1'b0;
Y_0 <= 1'b0;
#150;

end

initial
 begin
   $dumpfile("dump.vcd");
   $dumpvars(0, tb);

 end
endmodule