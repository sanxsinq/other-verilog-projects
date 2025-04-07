module mod_2(I1M2,I2M2,V);
input wire I1M2,I2M2;
output wire V;
assign V = ~((I1M2 | I2M2) & (I1M2 & I2M2));
endmodule