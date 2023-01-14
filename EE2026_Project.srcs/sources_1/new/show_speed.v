`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2021 21:22:55
// Design Name: 
// Module Name: show_speed
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


module show_speed(
    input fast,
    input speedo,
    input [5:0] level,
    output reg [7:0] Z0 = 8'b1111_1111,
    output reg [7:0] Z1 = 8'b1111_1111,
    output reg [7:0] Z2 = 8'b1111_1111,
    output reg [7:0] Z3 = 8'b1111_1111
    );
    
    always @ (posedge fast)
    begin
    if (speedo == 1)
    begin
            if (level >= 12 && level <= 15) 
            begin
                Z0 = 8'b10001110; // fast
                Z1 = 8'b10001000;
                Z2 = 8'b10010010;
                Z3 = 8'b10000111;
            end
            else if (level >= 6 && level <= 11)
            begin
                Z0 = 8'b11111111;//0k
                Z1 = 8'b11111111;
                Z2 = 8'b11000000;
                Z3 = 8'b10001001;
            end
            else if (level >=0 && level <= 5)
            begin
                Z0 = 8'b10010010;//slow
                Z1 = 8'b11000111;
                Z2 = 8'b11000000;
                Z3 = 8'b11010101;
            end
            end
            end
endmodule
