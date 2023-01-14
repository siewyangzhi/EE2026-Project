`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2021 17:32:37
// Design Name: 
// Module Name: game_best_logic
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


module game_best_logic(
    input one_sec_clk,
    input activation_signal,
    input [5:0] volume,
    output reg [11:0] High_position,
    output reg [11:0] Mid_position ,
    output reg [11:0] Low_position
    );
    integer x;
    
    initial begin
    High_position  = 0;
    Mid_position = 0;
    Low_position = 0;
    end
    
    always @(posedge one_sec_clk)
    begin 
   if(activation_signal == 1)
   begin
            //shift all the positions by 1.
           for(x = 11; x >= 1 ; x = x - 1)
            begin
                High_position[x-1] <= High_position[x];
                Mid_position[x-1] <= Mid_position[x];
                Low_position[x-1] <= Low_position[x];
            end
            
            // update the first /rightmost position.
            if (volume == 1)
            begin
                High_position[11] <= 0;
                Mid_position[11] <= 0;
                Low_position[11] <= 1;
            end
            else if (volume == 2)
            begin
                High_position[11] <= 0;
                Mid_position[11] <=1;
                Low_position[11] <=0;
            end
            else if (volume == 3)
            begin
                 High_position[11] <= 1;
                 Mid_position[11] <= 0;
                 Low_position[11] <=0;
            end 
            else
            begin
                  High_position[11] <= 0;
                  Mid_position[11] <= 0;
                Low_position[11] <=0;
            end  
        end
    end
    
endmodule
