module mod_1(
    input A, B, C, D,
    output wire  O1M1, O2M1
);
assign O1M1 = ((( A | B) & C) | (~(A & B)));
assign O2M1 = D;

endmodule