`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2021 11:17:45
// Design Name: 
// Module Name: Debounced_Signal
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


module Debounced_Signal(
 input clk2,
 input taptapmode,
 input SW,
 output Debounced_Signal 
    );
    
wire Q;
wire Q2;      
        my_dff dut1(clk2, SW, Q);
        my_dff dut2(clk2, Q, Q2);
        
        assign Debounced_Signal = (taptapmode == 1)?0:~Q2 & Q;
endmodule
