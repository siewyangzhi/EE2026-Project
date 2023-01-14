`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2021 18:57:29
// Design Name: 
// Module Name: calibrations
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


module calibrations(
    input rst,
    input [3:0]start,
    input stop1,//5sec flag
    input clk_sample,//20
    input [15:0] current,
    output reg[21:0] temp =0
    );
    
    reg [15:0] counter = 0;
    reg [15:0] find_largest = 0;
    reg [15:0] max = 0;//invert 
   
    
    
    always @ (posedge clk_sample, posedge rst)//clk_sample
    begin
     if (rst)
       begin
           counter = 0;
           find_largest = 0;
           max = 0;
           temp = 0;  
       end
       else begin
        counter <= (counter == 2000) ? 0 : counter + 1; //2000
            find_largest <= (counter == 2000) ? 0 : ( (current > find_largest) ? current : find_largest) ; //2000 // delete counter paart
            max <= (start == 1) ? ((counter == 2000) ?  find_largest : max) : max; //2000
            temp = (stop1 == 0) ? ((temp+max)/2) : temp;
       
    end
    end
  
                      
                   

    
endmodule
