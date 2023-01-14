`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2021 21:19:39
// Design Name: 
// Module Name: clk_one_sec
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

//Not 1 second  but around 0.25
module clk_one_sec(
input CLK,
output reg one_sec_signal = 1
    );

reg [25:0] counter = 0;

always @(posedge CLK)
begin 
counter <= (counter == 12499999)?0 : counter + 1;
one_sec_signal <= (counter == 12499999)? ~one_sec_signal : one_sec_signal;
end
    
endmodule
