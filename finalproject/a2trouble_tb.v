`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2021 00:26:31
// Design Name: 
// Module Name: fail_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`include "scp_079.v"
module a2trouble_tb;
    reg green, yellow, red, clock;
    wire [5:0] timer;
    wire [2:0] state;
    wire a1;
    wire a2;
    wire a3;
    wire cheat_out;

    initial begin
        clock = 0;
        #0.5;
        forever begin
            #0.5 clock = ~clock;
        end
    end
    
    scp_079 UUT(.green(green), .clock(clock),
     .timer(timer), .yellow(yellow), .red(red),
      .state(state), .a1(a1), .a2(a2), .a3(a3),
       .cheat_out(cheat_out));
    
    initial begin
        green = 1; yellow = 0; red = 0;
        #40 green = 0; yellow = 1;
        #20 green = 1; yellow = 0;
        #44 $finish;
    end
    

endmodule