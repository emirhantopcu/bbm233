`timescale 1ns / 1ps

`include "Dflipflop.v"

module controller(F, x, y, clock);

input x, y , clock;
output [1:0] F;
reg [1:0] p_state = 2'b00;
wire [1:0] n_state;

Dflipflop flipflop1(.D((~p_state[1] & ~p_state[0] & x) | (~p_state[1] & p_state[0] & y) | (x & y)), .clock(clock), .Q(n_state[0]));
Dflipflop flipflop2(.D((~p_state[1] & p_state[0]) | (p_state[1] & x)), .clock(clock), .Q(n_state[1]));

always@ (posedge clock)
begin
    p_state <= n_state;
end

assign F [1] = n_state [1];
assign F [0] = n_state [0];

endmodule