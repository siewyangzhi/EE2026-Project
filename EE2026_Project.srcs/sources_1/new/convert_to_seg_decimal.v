`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2021 15:41:34
// Design Name: 
// Module Name: convert_to_seg_decimal
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


module convert_to_seg_decimal(
    input [3:0] dec_val, 
   output [7:0] seg_val)
   ;
   
assign seg_val = (dec_val == 0) ? 8'b01000000 :
                 (dec_val == 1) ? 121 :
                 (dec_val == 2) ? 36 :
                 (dec_val == 3) ? 48 :
                 (dec_val == 4) ? 25 :
                 (dec_val == 5) ? 18 :
                 (dec_val == 6) ? 2 :
                 (dec_val == 7) ? 120:
                 (dec_val == 8) ? 0 :
                 (dec_val == 9) ? 166 :
                 255;
endmodule