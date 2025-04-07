module dfftb();
   reg reset, clk, D;
   wire Q;
   dff dut(
    .reset(reset),
    .clk(clk),
    .D(D),
    .Q(Q)
   );

   always begin
    clk <= 1'b0;
    #50;
    clk <= 1'b1;
    #50;
   end
  
   initial begin
     reset <=1'b1;
     #100;
     reset <=1'b0;
     #100;
     D <=1'b1;
     #100;
     D <=1'b0;
     #100;
     $finish;
   end

   initial begin 
   $dumpfile("dump.vcd");
   $dumpvars(0, dfftb);
   end
   endmodule