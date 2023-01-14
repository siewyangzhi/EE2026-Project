`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2021 15:26:59
// Design Name: 
// Module Name: display_plexer
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


module display_plexer(
    input clk11,
    input [15:0] max,
    output  [7:0] Z2,//msb
    output [7:0] Z3
    );
   
     reg [3:0]value_two = 0; 
     reg [3:0]value_three = 0; 
     
    
    
    always @ (posedge clk11)
    begin
        value_three <= max % 10;// lsb
        value_two <= (max / 10) % 10;//msb
    end
    
    
    convert_to_seg lsb (value_three, Z3);
    convert_to_seg_decimal msb (value_two, Z2);

endmodule