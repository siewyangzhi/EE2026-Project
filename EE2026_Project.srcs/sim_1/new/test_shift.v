`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2021 15:02:38
// Design Name: 
// Module Name: test_shift
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


module test_shift(
    );
          reg CLOCK;
          reg leftbutton;
          reg rightbutton;
          wire [6:0]left;
          Shifting_Oled SO(CLOCK,0,leftbutton,rightbutton,left);
          initial begin
              CLOCK = 0;
              leftbutton =0;
              rightbutton =0;
          end  
          always begin
               #5 CLOCK = ~CLOCK;          
          end
          
          always begin
              #5 leftbutton =1;rightbutton =0;
              #5 leftbutton =0;rightbutton =0;
          end

endmodule
