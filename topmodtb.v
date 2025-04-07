module tb();
   reg A,B,C,D,rst,clk;
   wire Q;
   topmod dut(
            .A(A),
            .B(B),
            .C(C),
            .D(D),
            .rst(rst),
            .clk(clk),
            .Q(Q)
   );
    always begin
      #5  clk = ~clk;
    end 

   initial begin 
     $dumpfile("topmod.vcd");
     $dumpvars(0, tb);
   end
initial begin
   A = 0; B = 0; C = 0; D = 0; rst = 1; clk = 0;
        #10 rst = 0;
        #10 A = 0; B = 1; C = 1; D = 1;
        #10 A = 0; B = 1; C = 0; D = 1;
        #10 A = 1; B = 1; C = 1; D = 1;
        #20 $finish;  
end
endmodule