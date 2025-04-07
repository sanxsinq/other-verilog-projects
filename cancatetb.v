module tb ();
reg [1:0] A;
reg [3:0] B;
wire [7:0] C;
wire [15:0] D,
concatenate uut(
     .A(A),
     .B(B),
     .C(C),
     .D(D)
);
initial begin 
 $dumpfile("concate.vcd");
 $dumpvars(0, tb);
end
initial begin
     A <= 2'b11;
     B <= 4'b1010;
     #20;
     end


endmodule