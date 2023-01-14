`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2021 00:12:23
// Design Name: 
// Module Name: count5_4
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


module count5_4(
    input reset,
    input fast,
        input clkone,
        input [3:0] presses,
        output reg stop = 0,
        output reg [4:0]led = 0
        );
        reg [2:0] counter = 1;
        
        always @ (posedge clkone, posedge reset)
        begin
         if (reset)
           begin
               counter = 1;
           end
           
        else if (presses == 4 && !reset)
        begin
            counter <= (counter == 6)? counter : counter +1;
            stop <= (counter >= 5)? 1:0;
        end
        end
        
            always @ (posedge fast) 
        begin
            case (counter)
            1 : led = 5'b11111;
            2 : led = 5'b01111;
            3 : led = 5'b00111;
            4 : led = 5'b00011;
            5 : led = 5'b00001;
            6 : led = 0;
            default led = 0;
            endcase
            
        end

endmodule