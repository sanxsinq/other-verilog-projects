module bnb(reset,clk,A,B,Q,S);
input reset, clk, A, B;
output reg Q,S;
always @ (posedge clk) begin
      if (reset == 1'b1) begin
          Q = 1'b0;
          S = 1'b0;
      end
      else begin
          Q <= A;
          S <= B;
     end
end

endmodule