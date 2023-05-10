`timescale 1ns / 1ps

module decoder_3x8(A,B,C,EN,d0,d1,d2,d3,d4,d5,d6,d7);
input A,B,C,EN;
output d0,d1,d2,d3,d4,d5,d6,d7;
wire d0,d1,d2,d3,d4,d5,d6,d7;
assign d0 = ~(A) & ~(B) & ~(C) & EN;
assign d1 = ~(A) & ~(B) & (C) & EN;
assign d2 = ~(A) & (B) & ~(C) & EN;
assign d3 = ~(A) & (B) & (C) & EN;
assign d4 = (A) & ~(B) & ~(C) & EN;
assign d5 = (A) & ~(B) & (C) & EN;
assign d6 = (A) & (B) & ~(C) & EN;
assign d7 = (A) & (B) & (C) & EN;

endmodule
