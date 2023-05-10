`timescale 1ns / 1ps

module Dflipflop(
    input D,
    input clock,
    output reg Q
    );
    
    always @ (posedge clock)
    begin
      Q <= D;
    end
    
    
endmodule