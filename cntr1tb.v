module cntrtb();
  reg clk, reset;
  wire [3:0] out;
  cntr c0(
    .clk(clk),
    .reset(reset),
    .out(out)
  );
  
always #10 clk = ~clk;

initial begin
  clk <= 0;
  reset <= 0;

  #20 reset <= 1;
  #40 reset <= 1;
  #30 reset <= 1;
end
 initial begin
 $dumpfile("cntr.vcd");
 $dumpvars(0, cntrtb);
 end
endmodule