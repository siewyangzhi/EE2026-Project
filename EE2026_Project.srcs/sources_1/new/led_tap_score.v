`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2021 14:36:26
// Design Name: 
// Module Name: led_tap_score
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


module led_tap_score(
    input fast,
    input tap,
    input [4:0]score,
    output reg [15:0] led = 0
    );
    
    
    always @ (fast)
    begin
    if (score == 0)
    begin
        led = 16'b1;
    end
    if (score == 1)
    begin
        led = 16'b11;
    end
    else if (score == 2)
    begin
        led = 16'b111;
    end
    else if (score == 3)
        begin
            led = 16'b1111; 
        end
     else if (score == 4)
        begin
            led = 16'b11111;
        end
    else if (score == 5)
        begin
            led = 16'b111111;
        end
    else if (score == 6)
    begin
        led = 16'b1111111;
    end
    else if (score == 7)
    begin
        led = 16'b11111111;
    end
    else if (score == 8)
    begin
        led = 16'b111111111;
    end
    else if (score == 9)
    begin
        led = 16'b1111111111;
    end
    else if (score == 10)
        begin
            led = 16'b11111111111;
        end
    else if (score == 11)
        begin
            led =  16'b111111111111;
        end
    else if (score == 12)
        begin
            led = 16'b1111111111111;
        end
    else if (score == 13)
        begin
            led = 16'b11111111111111;
        end
    else if (score == 14)
        begin
            led = 16'b111111111111111;
        end
    else if (score == 15)
        begin
            led = 16'b1111111111111111;
        end
    end
   
    

endmodule
