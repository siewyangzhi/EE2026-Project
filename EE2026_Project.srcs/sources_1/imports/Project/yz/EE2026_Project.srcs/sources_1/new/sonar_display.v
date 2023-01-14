`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2021 11:10:10
// Design Name: 
// Module Name: sonar_display
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


module sonar_display(
input CLK,
input activation,
input [3:0]length,
input [12:0] pixel_index,
output reg [15:0] RGB = 16'b0000000000000000
    );
    reg [6:0] row = 0;
    reg [6:0] column = 0;    
    
    //Each length represents 1cm.
   always @(posedge CLK)
   begin
   
   if (activation == 1)
   begin
       row <= pixel_index / 96;
       column <= pixel_index % 96;  
       //Layer 0
          if ((row >= 28 && row <= 34)  && (column >=44 &&column <= 50))
          begin
              if (length == 0)
              begin
              RGB = 16'b1111100000000000;
              end
              
              else
              begin
              RGB = 16'b1111111111111111;
              end         
          end
        //Layer 1  
          else if (((row == 25 || row == 37) &&(column <= 56 && column >= 38)) || ((column == 38 || column == 56) && (row >= 27 && row <=36)))
          begin  
              if(length <=3 && length >= 1)
              begin
              RGB = 16'b1111100000000000;
              end
              
              else
              begin
              RGB = 16'b1111111111111111;
              end 
          end   
          //Layer 2
          else if(((row == 19 || row == 43) &&(column <= 65 && column >= 29)) || ((column == 29 || column == 65) && (row >=20 && row <=42)))
              begin
              if(length <=6 && length >= 4)
              begin
              RGB = 16'b1111100000000000;
              end
              
              else
              begin
              RGB = 16'b1111111111111111;
              end 
          end      
          //Layer 3
          else if(((row == 13 || row == 49) &&(column <= 74 && column >= 20)) || ((column == 20 || column == 74) && (row >=14 && row <=48)))
              begin
              if(length <=9 && length >= 7)
              begin
              RGB = 16'b1111100000000000;
              end
     
              else
              begin
              RGB = 16'b1111111111111111;
              end 
          end  
          //Layer 4
          else if(((row == 7 || row == 55) &&(column <= 83 && column >= 11)) || ((column == 11 || column == 83) && (row >=8 && row <=54)))
              begin
              if(length <=12 && length >= 10)
              begin
              RGB = 16'b1111100000000000;
              end
     
              else
              begin
              RGB = 16'b1111111111111111;
              end 
          end  
          //Layer 5
            else if(((row == 1 || row == 61) &&(column <= 92 && column >= 2)) || ((column == 2 || column == 92) && (row >=2 && row <=60)))
              begin
              if(length <=15 && length >= 13)
              begin
              RGB = 16'b1111100000000000;
              end
     
              else
              begin
              RGB = 16'b1111111111111111;
              end 
          end      
          
          else 
          begin
            RGB = 16'b0000000000000000;
          end
          
       end   
    end    
endmodule
