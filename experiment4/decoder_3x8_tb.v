`timescale 1ns / 1ps
`include "decoder_3x8.v"

module decoder_3x8_tb;
    reg A,B,C,EN;
    wire d0,d1,d2,d3,d4,d5,d6,d7;
    decoder_3x8 UUT(A,B,C,EN,d0,d1,d2,d3,d4,d5,d6,d7);
    initial
        begin
        A = 1'b0; B = 1'b0; C = 1'b0; EN = 1'b0;
        #100 A = 1'b0; B = 1'b0; C = 1'b0; EN = 1'b1;    
        #100 A = 1'b0; B = 1'b0; C = 1'b1; EN = 1'b1;   
        #100 A = 1'b0; B = 1'b1; C = 1'b0; EN = 1'b1;
        #100 A = 1'b0; B = 1'b1; C = 1'b1; EN = 1'b1;
        #100 A = 1'b1; B = 1'b0; C = 1'b0; EN = 1'b1;
        #100 A = 1'b1; B = 1'b0; C = 1'b1; EN = 1'b1;
        #100 A = 1'b1; B = 1'b1; C = 1'b0; EN = 1'b1;
        #100 A = 1'b1; B = 1'b1; C = 1'b1; EN = 1'b1;
        #100 $finish;
        end
endmodule