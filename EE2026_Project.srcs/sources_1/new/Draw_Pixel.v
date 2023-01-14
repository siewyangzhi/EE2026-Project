`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2021 11:00:24
// Design Name: 
// Module Name: Draw_Pixel
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


module Draw_Pixel(
input CLK,
input [12:0] pixel_index,
input [3:0] level ,
input [6:0]Left_Col,
input border_type,
input off_border,
input OffVolume,
input Color_Scheme_Type,
output reg [15:0] RGB = 16'b0000000000000000
    );
reg [6:0] row = 0;
reg [6:0] column = 0;
reg pixel_colored = 0;

always @(posedge CLK) 
begin
row <= pixel_index / 96;
column <= pixel_index % 96;

//Color the borders
   if ((column == 0 || column == 95 ||row == 0 || row == 63)&& (off_border ==0))
  // if (row == 0 || row == 63)
    begin 
    RGB <= (Color_Scheme_Type == 0)?16'b1111111111111111:16'b0000000000000000; 
    pixel_colored = 1;
    end
    
  if(border_type == 1 && off_border == 0 && (column == 1 || column == 2 || column == 93 || column == 94 ||row == 1 || row == 2 || row == 61 || row == 62))
  begin
    RGB <= (Color_Scheme_Type == 0)?16'b1111111111111111:16'b0000000000000000; 
    pixel_colored = 1;
  end
// 

// Color the LED Volume
  if(level == 15 && OffVolume ==0 &&((row >= 9 && row <= 10 ) && (column >=Left_Col && column <= (Left_Col + 8))))
    begin 
    RGB <= (Color_Scheme_Type == 0)?16'b1111100000000000:16'b1111111111100000;
   pixel_colored = 1;
    end
    
  if(level >= 14 && OffVolume ==0 &&((row >= 12 && row <= 13) && (column >= Left_Col && column <= (Left_Col + 8))))
    begin 
    RGB <= (Color_Scheme_Type == 0)?16'b1111100000000000:16'b1111111111100000;
    pixel_colored = 1;
    end   
      
   if(level >= 13 && OffVolume ==0 &&((row >= 15 && row <= 16) &&(column >= Left_Col && column <= (Left_Col + 8))))
   begin 
      RGB <= (Color_Scheme_Type == 0)?16'b1111100000000000:16'b1111111111100000;
      pixel_colored = 1;
   end     
  
  if(level >= 12 && OffVolume ==0 &&((row >= 18 && row <= 19) &&(column >= Left_Col && column <= (Left_Col+8))))
  begin 
    RGB <= (Color_Scheme_Type == 0)?16'b1111100000000000:16'b1111111111100000;
    pixel_colored = 1;
  end       
  
  if(level >= 11 && OffVolume ==0 &&((row >= 21 && row <= 22) &&(column >=Left_Col && column <= (Left_Col + 8))))
  begin 
    RGB <= (Color_Scheme_Type == 0)?16'b1111100000000000:16'b1111111111100000;
    pixel_colored = 1;
  end  

  if(level >= 10 && OffVolume ==0 &&((row >= 24 && row <= 25) &&(column >=Left_Col && column <= (Left_Col + 8))))
  begin 
    RGB <= (Color_Scheme_Type == 0) ?16'b1111111111100000:16'b0000011111100000;
    pixel_colored = 1;
  end        

  if(level >= 9 && OffVolume ==0 &&((row >= 27 && row <= 28) && (column >= Left_Col && column <= (Left_Col + 8))))
  begin 
    RGB <= (Color_Scheme_Type == 0) ?16'b1111111111100000:16'b0000011111100000;
    pixel_colored = 1;
  end         
       
  if(level >= 8 && OffVolume ==0 &&((row >= 30 && row <= 31) &&(column >=Left_Col && column <= (Left_Col + 8))))
  begin 
    RGB <= (Color_Scheme_Type == 0) ?16'b1111111111100000:16'b0000011111100000;
    pixel_colored = 1;
  end         
       
  if(level >= 7 && OffVolume ==0 &&((row >= 33 && row <= 34) &&(column >= Left_Col && column <= (Left_Col + 8))))
  begin 
    RGB <= (Color_Scheme_Type == 0) ?16'b1111111111100000:16'b0000011111100000;
   pixel_colored = 1;
  end         
       
  if(level >= 6 && OffVolume ==0 && ((row >= 36 && row <= 37) &&(column >= Left_Col && column <= (Left_Col + 8))))
  begin 
    RGB <= (Color_Scheme_Type == 0) ?16'b1111111111100000:16'b0000011111100000;
    pixel_colored = 1;
  end         
       
  if(level >= 5 && OffVolume ==0 && ((row >= 39 && row <= 40) &&(column >= Left_Col && column <= (Left_Col + 8))))
  begin 
    RGB <= (Color_Scheme_Type == 0) ?16'b0000011111100000:16'b0000000000011111;
    pixel_colored = 1;
  end  
  
  if(level >= 4 && OffVolume ==0 &&((row >= 42 && row <= 43) &&(column >=Left_Col && column <= (Left_Col + 8))))
  begin 
    RGB <= (Color_Scheme_Type == 0) ?16'b0000011111100000:16'b0000000000011111;
    pixel_colored = 1;
  end    

  if(level >= 3 && OffVolume ==0 &&((row >= 45 && row <= 46) &&(column >= Left_Col && column <= (Left_Col + 8))))
  begin 
    RGB <= (Color_Scheme_Type == 0) ?16'b0000011111100000:16'b0000000000011111;
    pixel_colored = 1;
  end  
  
if(level >= 2 && OffVolume ==0 &&((row >= 48 && row <= 49) &&(column >=(Left_Col) && column <= (Left_Col + 8))))
  begin 
    RGB <= (Color_Scheme_Type == 0) ?16'b0000011111100000:16'b0000000000011111;
    pixel_colored = 1;;
end  

if(level >= 1 && OffVolume ==0 &&((row >= 51 && row <= 52) &&(column >=(Left_Col) && column <= (Left_Col + 8))))
  begin 
   RGB <= (Color_Scheme_Type == 0) ?16'b0000011111100000:16'b0000000000011111;
    pixel_colored = 1;;
end  

if(level >= 0 && OffVolume ==0 &&((row >= 54 && row <= 55) &&(column >=(Left_Col) && column <= (Left_Col + 8))))
begin 
    RGB <= (Color_Scheme_Type == 0) ?16'b0000011111100000:16'b0000000000011111;
    pixel_colored = 1;;
end  
 
// Color the rest of the block black 
if (pixel_colored == 0)
begin
 RGB <= (Color_Scheme_Type == 0)?16'b0000000000000000:16'b1111111111111111;
end   

//reset the colored pixel for next pixel.
pixel_colored <= 0;

//End of always block    
end
   
endmodule
