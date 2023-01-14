`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2021 14:47:12
// Design Name: 
// Module Name: Shifting_Oled
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


module Shifting_Oled(
input CLK,
input Border_Type,
input Left_Signal,
input Right_Signal,
output reg [6:0] Left_Col = 43
);

 //reg [6:0] Right_Col = 51;
 
 
always @(posedge CLK)
begin
/*
//Up signal
if(Up_Signal == 1)
begin
     if(Border_Type == 1 && Top_row - 1 > 2)
     begin
        Up <= Up + 1;
        Top_row <= Top_row -1;
     end
     
     else if(Border_Type == 0 && Top_row - 1 > 0)
     begin
         Up <= Up + 1;
         Top_row <= Top_row -1;
     end 
 end

// Down Signal 
if(Down_Signal == 1)
begin
     if(Border_Type == 1 && Bottom_row + 1 < 61)
     begin
        Down <= Down + 1;
        Bottom_row <= Bottom_row + 1;
     end
     
     else if(Border_Type == 0 && Bottom_row + 1 < 63)
     begin
         Down <= Down + 1;
         Bottom_row <= Bottom_row + 1;
     end 
 end
*/
//Left Signal
if(Left_Signal == 1)
begin
     if(Border_Type == 1 && Left_Col > 22)
     begin
        Left_Col <= Left_Col - 20;
     end
     
     else if(Border_Type == 0 && Left_Col > 20)
     begin
         Left_Col <= Left_Col - 20;
     end 
 end

//Right Signal 
if(Right_Signal == 1)
begin
     if(Border_Type == 1 && Left_Col + 8 + 20 < 92)
     begin
        Left_Col <= Left_Col + 20;
     end
     
     else if(Border_Type == 0 && Left_Col + 8 + 20 < 94)
     begin
         Left_Col <= Left_Col + 20;
     end 
 end
 
//Always block end
end 
endmodule
