`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2021 10:58:25
// Design Name: 
// Module Name: simumenu
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


module simumenu(

    );
    
    
    
     reg CLOCK;
     reg reset;
     reg Left,Right;    
             draw_menu sg (CLOCK,0,1,Left,Right);
     initial begin
         CLOCK = 0;
     end
     
     
      always begin
            #5 CLOCK = ~CLOCK;            
       end 
       
       always begin
             Left = 0; Right = 1; #50;
             Left = 1; Right = 0; #50;       
        end      
endmodule
