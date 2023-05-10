`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2020 15:33:26
// Design Name: 
// Module Name: controller_tb
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

`include "controller.v"



module controller_tb;
    reg x, y, clock = 0;
    wire [1:0] F;
    
    controller UUT(
        .x(x), .y(y), .clock(clock), .F(F)
    );
    
    always begin
        #5
        clock = 1;
        #5
        clock = 0;
    end
    
    initial begin 
        x = 0; y = 0;
        #50 x = 1;
        #50 y = 1;
        #50 x = 1; y = 1;
        #50 x = 0;
        #50 x = 0;
        #50 x = 1;
        #50 y = 0;
        #50 x = 1; y = 0;
        #50 x = 0;
        #50 x = 1;
        #50 y = 0;
        #50 x = 1; y = 1;
        #50 x = 1; y = 0;
        $finish;
    end

endmodule
