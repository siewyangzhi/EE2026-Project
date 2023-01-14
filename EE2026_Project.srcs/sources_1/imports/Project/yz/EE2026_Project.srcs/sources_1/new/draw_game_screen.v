`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2021 18:48:17
// Design Name: 
// Module Name: draw_game_screen
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


module draw_game_screen(
input CLK,
input switch12,
input [10:0] High_position,
input [10:0] Mid_position ,
input [10:0] Low_position,
input [12:0] PixelIndex,
input DBtn,
input UBtn,
input CBtn,
output reg [1:0] High_Rating = 0, //0 for nothing, 1 for good , 2 for bad.
output reg [1:0] Mid_Rating = 0,
output reg [1:0] Low_Rating = 0,
output reg [13:0] counter,
output reg [15:0] RGB
);

reg [6:0] row = 0;
reg [6:0] column = 0;
reg rating_set =0;

reg [27:0] H_counter = 0;
reg [27:0] M_counter = 0;
reg [27:0] L_counter = 0;

always @(posedge CLK)
begin
//rating == bad
    if ((Low_position[0] == 1  && UBtn == 0) || (Low_position[0] == 0 && UBtn == 1) || (Mid_position[0] == 1 && CBtn == 0) || (Mid_position[0] == 0 && CBtn == 1) || (High_position[0] == 1 && DBtn == 0) || (High_position[0] == 0 && DBtn == 1))
        begin
            High_Rating <= 2;
            Mid_Rating <=2;
            Low_Rating <= 2;
        end
    else if ((Low_position[0] == 1 && UBtn == 1) || (Mid_position[0] == 1 && CBtn == 1) || (High_position[0] == 1 && DBtn == 1))
    begin
         High_Rating <= 1;
         Mid_Rating <=1;
         Low_Rating <= 1;
    end
    
    else
    begin
         High_Rating <= 0;
         Mid_Rating <=0;
         Low_Rating <= 0;
    end
    
end

always @(CLK)
begin
row = PixelIndex / 96;
column = PixelIndex % 96; 

            //The border//
            if ((column >= 93 && column <= 95) || (column >= 0 && column <= 2) ||(row >= 0 && row <= 2) || (row >= 61 && row <= 63))
             begin
                   RGB <= 16'b1111111111111111;
             end 

            //The starting Pad Point
           else if (column <= 12 && column >= 5)
               begin
                  if (row >= 7 && row <= 20) 
                  begin
                             // if ((Low_position[0] == 1 || Low_position[1] == 1 )&& UBtn == 1)
                              if (Low_position[0] == 1 && UBtn == 1)
                              begin
                                  RGB <= 16'b0000011111100000;
                              end
                              
                            //  else if(((Low_position[0] == 1 || Low_position[1] == 1 ) && UBtn == 0) || ((Low_position[0] == 0 || Low_position[1] == 0)&& UBtn == 1))                       
                               else if((Low_position[0] == 1  && UBtn == 0) || (Low_position[0] == 0 && UBtn == 1))   
                              begin
                                  RGB <= 16'b1111100000000000;
                                  
                              end
                              
                              else  
                              begin
                                  RGB <= 16'b0000000000011111;
                              end   
                     end
                     
                   else if (row >= 25 && row <= 38)
                     begin

                           // if ((Mid_position[0] == 1 ||  Mid_position[1] == 1)  && CBtn == 1)
                            if (Mid_position[0] == 1 && CBtn == 1)
                             begin
                                 RGB <= 16'b0000011111100000;
                             end
                             
                           //  else if(((Mid_position[0] == 1 ||  Mid_position[1] == 1 )&& CBtn == 0) || ((Mid_position[0] == 0 || Mid_position[1] == 0) && CBtn == 1))    
                           else if((Mid_position[0] == 1 && CBtn == 0) || (Mid_position[0] == 0 && CBtn == 1))                 
                             begin
                                 RGB <= 16'b1111100000000000;
                             end
                             
                             else 
                             begin
                                 RGB <= 16'b0000000000011111;
                             end
                                
                     end 
                     else if (row >= 43 && row <= 56) 
                    // else if (row >= 43 && row <= 56) 
                    begin
                         // if ((High_position[0] == 1 || High_position[1] == 1) && DBtn == 1)
                          if ((High_position[0] == 1) && DBtn == 1)
                          begin
                              RGB <= 16'b0000011111100000;
                          end
                          
                         // else if(((High_position[0] == 1 || High_position[1] == 1) && DBtn == 0) || ((High_position[0] == 0 || High_position[1] == 0) && DBtn == 1))                       
                          else if((High_position[0] == 1 && DBtn == 0) || (High_position[0] == 0 && DBtn == 1))
                          begin
                              RGB <= 16'b1111100000000000;
                          end
                          
                          else 
                          begin
                              RGB <= 16'b0000000000011111;
                          end                          
                     end   
                                                   
                     else 
                     begin
                             RGB <= 16'b000000000000000;
                     end  
               end 
               
            //Check if (column == 92 to 95) || (column == 0 to 2) || (row == 0 to 2) || (row == 61 to 63), if it is then it is the border.
            
                           //else if position 10
          else if (column <= 92 && column >= 85)
            begin
                  if (row >= 7 && row <= 20 && Low_position[10] == 1)  
                  begin
                       RGB <= 16'b0000011111100000;
                  end
                  else if (row >= 25 && row <= 38 && Mid_position[10] == 1)
                  begin
                       RGB <= 16'b1111111111100000; 
                  end 
                  else if (row >= 43 && row <= 56 && High_position[10] == 1) 
                  begin
                       RGB <= 16'b1111100000000000;
                  end
                  else
                  begin 
                       RGB <= 16'b0000000000000000;
                  end
            end 

                //if position 9
             else if (column <= 84 && column >= 77)
               begin
                     if (row >= 7 && row <= 20 && Low_position[9] == 1)  
                     begin
                          RGB <= 16'b0000011111100000;
                     end
                     else if (row >= 25 && row <= 38 && Mid_position[9] == 1)
                     begin
                          RGB <= 16'b1111111111100000; 
                     end 
                     else if (row >= 43 && row <= 56 && High_position[9] == 1) 
                     begin
                          RGB <= 16'b1111100000000000;
                     end
                     else
                     begin 
                          RGB <= 16'b0000000000000000;
                     end
               end 
            //position 8
             else if (column <= 76 && column >= 69)
               begin
                     if (row >= 7 && row <= 20 && Low_position[8] == 1)  
                     begin
                          RGB <= 16'b0000011111100000;
                     end
                     else if (row >= 25 && row <= 38 && Mid_position[8] == 1)
                     begin
                          RGB <= 16'b1111111111100000; 
                     end 
                     else if (row >= 43 && row <= 56 && High_position[8] == 1) 
                     begin
                          RGB <= 16'b1111100000000000;
                     end
                     else
                     begin 
                          RGB <= 16'b0000000000000000;
                     end
               end 
            //position 7             
               else if (column <= 68 && column >= 61)
                 begin
                       if (row >= 7 && row <= 20 && Low_position[7] == 1)  
                       begin
                            RGB <= 16'b0000011111100000;
                       end
                       else if (row >= 25 && row <= 38 && Mid_position[7] == 1)
                       begin
                            RGB <= 16'b1111111111100000; 
                       end 
                       else if (row >= 43 && row <= 56 && High_position[7] == 1) 
                       begin
                            RGB <= 16'b1111100000000000;
                       end
                       else
                       begin 
                            RGB <= 16'b0000000000000000;
                       end
                 end 
//position 6
               else if (column <= 60 && column >= 53)
                 begin
                       if (row >= 7 && row <= 20 && Low_position[6] == 1)  
                       begin
                            RGB <= 16'b0000011111100000;
                       end
                       else if (row >= 25 && row <= 38 && Mid_position[6] == 1)
                       begin
                            RGB <= 16'b1111111111100000; 
                       end 
                       else if (row >= 43 && row <= 56 && High_position[6] == 1) 
                       begin
                            RGB <= 16'b1111100000000000;
                       end
                       else
                       begin 
                            RGB <= 16'b0000000000000000;
                       end
                 end 
//position 5
               else if (column <= 52 && column >= 45)
                 begin
                       if (row >= 7 && row <= 20 && Low_position[5] == 1)  
                       begin
                            RGB <= 16'b0000011111100000;
                       end
                       else if (row >= 25 && row <= 38 && Mid_position[5] == 1)
                       begin
                            RGB <= 16'b1111111111100000; 
                       end 
                       else if (row >= 43 && row <= 56 && High_position[5] == 1) 
                       begin
                            RGB <= 16'b1111100000000000;
                       end
                       else
                       begin 
                            RGB <= 16'b0000000000000000;
                       end
                 end 
                 //position 4
               else if (column <= 44 && column >= 37)
                   begin
                         if (row >= 7 && row <= 20 && Low_position[4] == 1)  
                         begin
                              RGB <= 16'b0000011111100000;
                         end
                         else if (row >= 25 && row <= 38 && Mid_position[4] == 1)
                         begin
                              RGB <= 16'b1111111111100000; 
                         end 
                         else if (row >= 43 && row <= 56 && High_position[4] == 1) 
                         begin
                              RGB <= 16'b1111100000000000;
                         end
                         else
                         begin 
                              RGB <= 16'b0000000000000000;
                         end
                   end 
                   //position 3
                              else if (column <= 36 && column >= 29)
                     begin
                           if (row >= 7 && row <= 20 && Low_position[3] == 1)  
                           begin
                                RGB <= 16'b0000011111100000;
                           end
                           else if (row >= 25 && row <= 38 && Mid_position[3] == 1)
                           begin
                                RGB <= 16'b1111111111100000; 
                           end 
                           else if (row >= 43 && row <= 56 && High_position[3] == 1) 
                           begin
                                RGB <= 16'b1111100000000000;
                           end
                           else
                           begin 
                                RGB <= 16'b0000000000000000;
                           end
                     end     
                             //position 2
                             
                                else if (column <= 28 && column >= 21)
                       begin
                             if (row >= 7 && row <= 20 && Low_position[2] == 1)  
                             begin
                                  RGB <= 16'b0000011111100000;
                             end
                             else if (row >= 25 && row <= 38 && Mid_position[2] == 1)
                             begin
                                  RGB <= 16'b1111111111100000; 
                             end 
                             else if (row >= 43 && row <= 56 && High_position[2] == 1) 
                             begin
                                  RGB <= 16'b1111100000000000;
                             end
                             else
                             begin 
                                  RGB <= 16'b0000000000000000;
                             end
                       end   
                       
                       //position 1
                                   else if (column <= 20 && column >= 13)
                         begin
                               if (row >= 7 && row <= 20 && Low_position[1] == 1)  
                               begin
                                    RGB <= 16'b0000011111100000;
                               end
                               else if (row >= 25 && row <= 38 && Mid_position[1] == 1)
                               begin
                                    RGB <= 16'b1111111111100000; 
                               end 
                               else if (row >= 43 && row <= 56 && High_position[1] == 1) 
                               begin
                                    RGB <= 16'b1111100000000000;
                               end
                               else
                               begin 
                                    RGB <= 16'b0000000000000000;
                               end
                         end       
                                
                           // Any other pixel.
                           else
                           begin
                                RGB <= 16'b0000000000000000;
                           end
                      
end

    
    
endmodule
