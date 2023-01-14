`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2021 08:56:54
// Design Name: 
// Module Name: test_count5
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


module test_count5(

    );
    reg clk;
reg CLOCK;
reg [1:0] presses;
wire [4:0] led;





wire stop;

count5_1 test1(clk,CLOCK,presses,stop,led);
initial begin
    CLOCK = 0;
    clk = 0;
    presses = 1;
end


 always begin
       #5 CLOCK = ~CLOCK;
        #5 clk = ~clk; 
          
  end 


endmodule
        
        