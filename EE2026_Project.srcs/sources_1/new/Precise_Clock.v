`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2021 11:04:39
// Design Name: 
// Module Name: Precise_Clock
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


module Precise_Clock(
input CLK,
output reg PCLK = 0
    );
reg [31:0] counter = 0;    
reg [31:0] cmatch = 7;
  always @(posedge CLK)begin
        counter <= (counter == cmatch)?0 :counter + 1;
        PCLK <= (counter == cmatch)?~PCLK :PCLK;
    end  
 
endmodule
