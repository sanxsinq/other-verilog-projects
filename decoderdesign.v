module decoderdesign (a,e,y0,y1,y2,y3);
input [1:0] a;
// input[msb:lsb] variable_name
input e;
output y0,y1,y2,y3;
assign y0 = (e) & (~a[0]) & (~a[1]);
assign y1 = (e) & (a[0]) & (~a[1]);
assign y2 = (e) & (~a[0]) & (a[1]);
assign y3 = (e) & (a[0]) & (a[1]);
endmodule