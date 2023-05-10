`timescale 1ns / 1ps
`include "decoder_4x16.v"

module decoder_4x16_tb;
    reg W,X,Y,Z;
    wire D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15;
    decoder_4x16 UUT2(W,X,Y,Z,D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15);
    initial
        begin
             W = 1'b0; X = 1'b0; Y = 1'b0; Z = 1'b0;
        #100 W = 1'b0; X = 1'b0; Y = 1'b0; Z = 1'b1;
        #100 W = 1'b0; X = 1'b0; Y = 1'b1; Z = 1'b0;
        #100 W = 1'b0; X = 1'b0; Y = 1'b1; Z = 1'b1;
        #100 W = 1'b0; X = 1'b1; Y = 1'b0; Z = 1'b0;
        #100 W = 1'b0; X = 1'b1; Y = 1'b0; Z = 1'b1;
        #100 W = 1'b0; X = 1'b1; Y = 1'b1; Z = 1'b0;
        #100 W = 1'b0; X = 1'b1; Y = 1'b1; Z = 1'b1;
        #100 W = 1'b1; X = 1'b0; Y = 1'b0; Z = 1'b0;
        #100 W = 1'b1; X = 1'b0; Y = 1'b0; Z = 1'b1;
        #100 W = 1'b1; X = 1'b0; Y = 1'b1; Z = 1'b0;
        #100 W = 1'b1; X = 1'b0; Y = 1'b1; Z = 1'b1;
        #100 W = 1'b1; X = 1'b1; Y = 1'b0; Z = 1'b0;
        #100 W = 1'b1; X = 1'b1; Y = 1'b0; Z = 1'b1;
        #100 W = 1'b1; X = 1'b1; Y = 1'b1; Z = 1'b0;
        #100 W = 1'b1; X = 1'b1; Y = 1'b1; Z = 1'b1;
        #100 $finish;
        end
endmodule
