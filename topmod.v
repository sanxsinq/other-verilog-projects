`include "mod1.v"
`include "mod2.v"
module topmod( A,B,C,D,rst,clk,Q);
input A,B,C,D,rst,clk;
output Q;
reg [1:0] mid_reg;
wire O1M1,O2M1,V;
mod_1 dut1(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .O1M1(O1M1),
    .O2M1(O2M1)
);
always @(posedge clk or posedge rst) begin
    if (rst)begin
       mid_reg <= 2'b00;
    end
    else begin
      mid_reg[0] <= O1M1;
      mid_reg[1] <= O2M1;
    end
end
mod_2 dut2(
    .I1M2(mid_reg[0]),
    .I2M2(mid_reg[1]),
    .V(Q)
);
endmodule