`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2021 10:23:27
// Design Name: 
// Module Name: clk20k
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


module clk20k(
    input CLOCK,
    input [31:0] flip_count,
    output reg clk_20k = 0
    );
    
    // create clock for 25Mhz checkin
    reg [31:0] counter = 32'b0;
    

    
    always @ (posedge CLOCK) begin
        counter <= (counter == flip_count) ? 0 : counter + 1;
        clk_20k <= (counter == flip_count)? ~clk_20k: clk_20k;
        
    end
endmodule
