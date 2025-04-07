 module tb();
 reg s;
 reg[1:0] a,b;
 wire[1:0] y;

 mux dut (
    .a(a),
    .b(b),
    .s(s),
    .y(y)
 );
 initial begin
    a<= 2'b11;
    b<= 2'b01;
    #100;
    s<=1'b0;
    #100;
    s<=1'b1;
    #100;
 end
 initial begin 
 $dumpfile("dump1 .vcd");
 $dumpvars(0, tb);
 end;
 endmodule