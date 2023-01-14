`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2021 09:18:55
// Design Name: 
// Module Name: test_cali
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


module test_cali(

    );
        reg CLOCK;
        reg start;
        reg stop;
        reg [15:0] current;

        wire [21:0] value;
        
calibrations calibrate_avg (start,stop,CLOCK, current, value);
        initial begin
            CLOCK = 0;
            current = 0; #10;
            current = 2078;
        end
        
        
         always begin
               #5 CLOCK = ~CLOCK;            
          end 
        
    endmodule
