module tb();
reg I0,I1,sel;
wire [1:0] Y;

ifelse dut (
    .I0(I0),
    .I1(I1),
    .sel(sel),
    .Y(Y)
);
initial begin 
    I0 = 1'b0;
    I1 = 1'b0;
    sel = 1'b0;
    #10;
    I0 = 1'b0;
    I1 = 1'b0;
    sel = 1'b1;
    #10;
    I0 = 1'b0;
    I1 = 1'b1;
    sel = 1'b0;
    #10;
    I0 = 1'b1;
    I1 = 1'b0;
    sel = 1'b0;
    #10;
    I0 = 1'b0;
    I1 = 1'b1;
    sel = 1'b1;
    #10;
    I0 = 1'b1;
    I1 = 1'b0;
    sel = 1'b1;
    #10;
    I0 = 1'b1;
    I1 = 1'b1;
    sel = 1'b0;
    #10;
    I0 = 1'b1;
    I1 = 1'b1;
    sel = 1'b1;
    #10;
    $finish;
    end
initial begin
  $dumpfile("ifelse.vcd");
  $dumpvars( 0, tb);
  end
endmodule