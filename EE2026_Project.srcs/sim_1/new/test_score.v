`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2021 04:04:17
// Design Name: 
// Module Name: test_score
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


module test_score(

    );
    
    reg CLOCK;
    reg reset;
    reg D_Down,D_Up,D_Centre;    
            score_generator sg (CLOCK,1,reset,D_Down,D_Up,D_Centre,1,1,1);
    initial begin
        CLOCK = 0;
    end
    
    
     always begin
           #5 CLOCK = ~CLOCK;            
      end 
      
      always begin
            D_Down= 1;D_Up= 1;D_Centre = 1;reset = 0; #120;
            D_Down= 0;D_Up= 0;D_Centre = 0;reset = 1; #120;       
       end      
endmodule
