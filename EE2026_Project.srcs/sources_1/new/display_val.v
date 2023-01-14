`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2021 13:16:02
// Design Name: 
// Module Name: display_val
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


module display_val(
    input clk11,
    input [15:0] max,
    output [7:0] Z0,
    output  [7:0] Z1,
    output  [7:0] Z2,
    output [7:0] Z3
    );
     reg [3:0]value_one = 0;
     reg [3:0]value_two = 0; 
     reg [3:0]value_three = 0; 
     reg [3:0]value_zero = 0;
    
    
    always @ (posedge clk11)
    begin
        value_three <= max % 10;// lsb
        value_two <= (max / 10) % 10;
       value_one <= (max / 100) % 10;
       value_zero <= max / 1000;//msb
    end
    
    
    convert_to_seg lsb (value_three, Z3);
    convert_to_seg lsb1 (value_two, Z2);
    convert_to_seg msb1(value_one, Z1);
    convert_to_seg msb2 (value_zero, Z0);
endmodule