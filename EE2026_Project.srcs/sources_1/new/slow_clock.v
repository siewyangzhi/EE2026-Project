`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2021 11:21:31
// Design Name: 
// Module Name: slow_clock
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


module slow_clock(
    input CLOCK,
    output reg slow =0
    );
    
    reg [19:0] count = 0;
    reg [23:0] cmatch = 131233;
 //   reg [23:0] cmatch = 1;
    always @ (posedge CLOCK) 
    begin
        count <= (count == cmatch)?0:count + 1;
        slow <= (count == cmatch) ? ~slow : slow;
    end
endmodule
