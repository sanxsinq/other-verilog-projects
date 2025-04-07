module tb();
reg [31:0] A,B;
wire [31:0] C;
parameterized #(.WIDTH (32)) dut (
                      .A(A),
                      .B(B),
                      .C(C)
);
parameterized #(.WIDTH (16)) dut_1 (
                      .A(A),
                      .B(B),
                      .C(C)
);
initial begin 
    A <= 32'h00000001;
    B <= 32'h00000012;
    #40;
    $finish;
end
initial begin
   $dumpfile("para.vcd");
   $dumpvars(0, tb);
end
initial begin
    $monitor("Time = %0t | A = %h, B = %h, C = %h| ", 
              $time, A,B,C);
  end

endmodule