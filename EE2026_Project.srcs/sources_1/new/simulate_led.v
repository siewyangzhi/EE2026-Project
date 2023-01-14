`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2021 11:50:03
// Design Name: 
// Module Name: simulate_led
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


module simulate_led(
    input fast, 
    input displayalt,
    input clk, // 1 second clk //3sec //5sec (change in clock)
    output reg [15:0] led = 0
    );
    
    reg [1:0] counter = 0;
    
    
    always @ (posedge clk)
    begin
       if (displayalt == 1)
       begin
       counter <= (counter == 2)? 1 : counter + 1;
    end
    end
    
    always @ (posedge fast)
    begin
    case (counter)
    
        1 : led = 16'b0101010101010101;
        2 : led = 16'b1010101010101010;
        default led = 0;
    endcase
    end

endmodule
