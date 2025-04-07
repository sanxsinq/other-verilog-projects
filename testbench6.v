module tb;
reg [1:0] a;
reg e;
wire y0,y1,y2,y3;
decoderdesign dut (
    .a(a),
    .e(e),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
    );

    initial begin
    //variable_name= no.of bit'b(binary etc)valueofa(2bit means00,01,10,11)
    a = 2'b10;
    e = 1'b0;
    #100;    
    a = 2'b01;
    e = 1'b1;
    #100;
    a = 2'b10;
    e = 1'b1;
    #100;
    a = 2'b11;
    e = 1'b1;
    #100;
    a = 2'b00;
    e = 1'b1;
    #100;            
    end   
    initial begin
    $monitor("Time=%0t: e=%b a=%b -> y0=%b y1=%b y2=%b y3=%b", 
             $time, e, a, y0, y1, y2, y3);
    end

    initial begin
    $dumpfile("dump9.vcd");
    $dumpvars(0, tb);
    end
endmodule