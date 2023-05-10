//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2021 19:41:27
// Design Name: 
// Module Name: scp_079
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


module scp_079(timer, clock, green, yellow, red, state, a1, a2, a3, cheat_out);
    input green, yellow, red, clock;
    output [2:0] state;
    output reg [5:0] timer;
    output a1, a2, a3, cheat_out;

    wire green, yellow, red, clock;
    reg [2:0] state;
    reg a1, a2, a3, cheat_out;
    initial begin
        timer = 1;                          //initializer for inputs, state and timer
        state = 0;
        a1 = 0;
        a2 = 0;
        a3 = 0;
        cheat_out = 0;
    end
                                                //if blocks for transitions
    always @(posedge clock) begin           
        assign timer = timer + 1; //timer count is done here
        if(state == 0 && timer > 20 && green)begin  //lay low to attack security state
            assign timer = 1;
            assign state = 2;
            assign a1 = 1;
        end
        else if((state == 0 || state == 2 || state == 3) && red)begin  //lay low, attack sec., attack dat. to cheat state
            assign timer = 1;
            assign state = 1;
            assign cheat_out = 1;
        end
        else if(state == 2 && timer > 10 && green)begin     // attack sec. to attack dat. state
            assign timer = 1;
            assign state = 3;
            assign a2 = 1;
        end
        else if(state == 2 && yellow)begin      //attack sec. to lay low state
            assign timer = 1;
            assign state = 0;
            assign a1 = 0;
        end
        else if(state == 3 && timer > 10 && green)begin  //attack dat. to connect state
            assign timer = 1;
            assign state = 5;
            assign a3 = 1;
        end
        else if(state == 3 && yellow)begin      //attack dat. to attack sec state
            assign timer = 1;
            assign state = 2;
            assign a2 = 0;
        end
        else if(state == 1 && timer > 15 && red)begin //cheat to fail state 
            assign timer = 1;
            assign state = 4;
        end
        else if(state == 1 && timer > 15 && green)begin // cheat to lay low state
            assign timer = 1;
            assign state = 0;
            assign a1 = 0; 
            assign a2 = 0; 
            assign a3 = 0; 
            assign cheat_out = 0; 
        end
    end
endmodule
