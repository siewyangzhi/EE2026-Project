`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2021 10:27:52
// Design Name: 
// Module Name: precise_clk
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


module precise_clk(
input CLOCK,
    input [31:0] flip_count,//33670032
    output reg clk = 0
    );
    
    // create clock for 25Mhz checkin
    reg [31:0] counter = 32'b0;
    

    
    always @ (posedge CLOCK) begin
        counter <= (counter == flip_count) ? 0 : counter + 1;
        clk <= (counter == flip_count)? ~clk: clk;
        
    end
endmodule