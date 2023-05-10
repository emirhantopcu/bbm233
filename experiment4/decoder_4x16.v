`timescale 1ns / 1ps
`include "decoder_3x8.v"

module decoder_4x16(W,X,Y,Z,D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15);
input W,X,Y,Z;
output D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15;
wire D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15;
decoder_3x8 d1(.A(X),.B(Y),.C(Z),.EN(~W),.d0(D0),.d1(D1),.d2(D2),.d3(D3),.d4(D4),.d5(D5),.d6(D6),.d7(D7));
decoder_3x8 d2(.A(X),.B(Y),.C(Z),.EN(W),.d0(D8),.d1(D9),.d2(D10),.d3(D11),.d4(D12),.d5(D13),.d6(D14),.d7(D15));
endmodule
