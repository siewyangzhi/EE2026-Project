`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2021 18:03:17
// Design Name: 
// Module Name: segments_display
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


module segments_display(
    input clk,
    input fast_clk,
    //input state, // state = 1 (on level) state = 0 (on mode)
    input [7:0] padded,
    input [7:0]mode,
    input [7:0]left,
    input [7:0]right,
    output  reg [3:0] AN = 4'b1111 ,
    output  reg [7:0] Z = 7'b1111111
    );
    
    
    reg [4:0] counter = 0;
                
    always @ (posedge clk) 
    begin
        counter <= (counter < 4) ? counter + 1  : 0; 
     end
     
     always @(posedge fast_clk)
     begin
      case (counter)
      
                1 : begin Z =  mode  ; AN = 4'b1011; end 
                2 : begin  Z =  left ; AN = 4'b1101; end
                3 : begin Z =  right ; AN = 4'b1110; end
                4 : begin Z =  padded  ; AN = 4'b0111; end 
               
                default  begin Z = 8'b11111111; AN = 4'b1111; end
            endcase
            end
endmodule

