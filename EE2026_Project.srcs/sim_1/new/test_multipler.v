`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2021 10:18:51
// Design Name: 
// Module Name: test_multipler
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


module test_multipler(

    );
    
 reg CLOCK;
    reg notimpt;
    reg [15:0] current;
    reg tunemode, up, down;
    
    
    wire [15:0] peak;
   
    wire [6:0] left,mode;
    wire [6:0] right;
    wire [5:0] level;
    
    tuning1 test(notimpt,CLOCK, current, tunemode, up, down, mode,left, right, peak, level);
    initial begin
        
        notimpt = 0;
        CLOCK = 0;
        tunemode = 0; #100;
        tunemode = 1;
        current = 0; #10;
        current = 2078;

    
        
     
    end
    
    
     always begin
           #5 CLOCK = ~CLOCK;
           #5 notimpt = ~notimpt;
 
             
      end 
    
    always begin

         up = 0; #100;
         up = 1; #100;
         up = 0; #100;
         down = 0; #100;
         down = 1; #100;
         down = 0; #100;
           
    end
            
    //always begin
    //  #50 pushbutton = 1;
    //end
endmodule

