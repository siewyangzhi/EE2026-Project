`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2021 16:27:41
// Design Name: 
// Module Name: test_rating_disp
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


module test_rating_disp(

    );
reg CLOCK =0 ;
/*
show_ratings sr (CLOCK,1,1,0,0,5);

 always begin
       #5 CLOCK = ~CLOCK;
  end 
*/
 always begin
      #5 CLOCK = ~CLOCK;
 end 
 
  always begin
        High_rating = 1; Mid_rating = 0;Low_rating =0; btnD =1 ;btnU = 0;btnC=0; #15;
         High_rating = 0; Mid_rating = 1;Low_rating =0; btnD =0 ;btnU = 0;btnC=1; #15;
        High_rating = 0; Mid_rating = 0;Low_rating =1; btnD =0 ;btnU = 1;btnC=0; #15;
   end 
   reg [1:0] High_rating =0;
   reg [1:0] Mid_rating =0;
   reg [1:0] Low_rating =0;
   reg btnC = 0;
   reg btnD = 0;
   reg btnU = 0;

draw_game_screen dgs(CLOCK,1,High_rating,Mid_rating,Low_rating,5000,btnD,btnU,btnC);




endmodule
