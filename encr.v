module encr(Y_0,Y_1,Y_2,Y_3,A0,A1);
input Y_0,Y_1,Y_2,Y_3;
output A0,A1;
assign A0 = Y_1 | Y_3;
assign A1 = Y_2 | Y_3;

endmodule