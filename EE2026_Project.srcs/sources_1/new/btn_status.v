`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2021 19:51:14
// Design Name: 
// Module Name: btn_status
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


module btn_status(
    input reset,
    input yz_clk,
    input sonarmod,
    input it_press,
    output reg [3:0] presses = 0,
    output reg [3:0] countdown = 0
    );
    
    always @ ( posedge yz_clk, posedge reset)
    begin
        if (sonarmod == 1  && reset)
        begin
            presses = 0;
            countdown = 0;
        end
        else if (sonarmod == 1 && it_press && !reset)
        begin   
            presses = (presses == 5) ? 5 : presses + 1;
            countdown = (countdown == 4)? 4: countdown + 1;
        end
    end
endmodule
