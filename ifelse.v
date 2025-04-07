module ifelse (
    input I0,
    input I1,
    input sel,
    output reg [1:0]Y
);
  always @(I0 or I1 or sel) begin
       if (sel == 1'b0)
          Y = I0 + I1; 
       else 
          Y = I0;
  end 
    endmodule
