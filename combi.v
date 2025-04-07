module combinational_circuit(A,B,C,Q);
input A,B,C;
output Q;
wire A_NAND_B , A_NOR_B;
assign A_NAND_B = (~(A & B));
assign A_NOR_B = (~(A | B));
assign Q = (A_NAND_B) & (A_NOR_B) & (C);


endmodule