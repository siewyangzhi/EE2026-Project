`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2021 13:05:13
// Design Name: 
// Module Name: show_ratings
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


module show_ratings(
    input fast,
    input sonar,
    input menu,
    input tunemode,
    input [1:0] rate,
    input [1:0] rate2,
    input [1:0] rate3,
    input [4:0] score,
    output reg [7:0] Z0 = 8'b1111_1111,
    output reg [7:0] Z1 = 8'b1111_1111,
    output reg [7:0] Z2 = 8'b1111_1111,
    output reg [7:0] Z3 = 8'b1111_1111
    );
    
    
    always @ ( posedge fast)
    begin
   
    
     if (sonar == 0 && menu == 1 && tunemode == 1 && (rate == 2 || rate2 == 2 || rate3 == 2)&& score != 15) // bad
     begin
        Z0 = 8'b1111_1111; //-
        Z1 = 8'b1000_0000; //B
        Z2 = 8'b1000_1000; //a
        Z3 = 8'b1010_0001; //d
          
      end
      else if ( sonar == 0 && menu == 1 && tunemode == 1 && (rate == 1|| rate2 == 1 || rate3 == 1)&& score != 15)
      begin
           Z0 = 8'b1001_0000; //g
            Z1 = 8'b1100_0000; //o
            Z2 = 8'b1100_0000; //0
            Z3 = 8'b1010_0001; //d
      end
     else if ( sonar == 0 && menu == 1 && tunemode == 1 && score == 15)
     begin
             Z0 = 8'b1111_1111; //-
             Z1 = 8'b11010101; //W
             Z2 = 8'b1100_1111; //i
             Z3 = 8'b1010_1011; //n            
      end
      else  // display nth
      begin 
           Z0 = 8'b1111_1111;
           Z1 = 8'b1111_1111;
           Z2 = 8'b1111_1111;// initial is all 1
           Z3 = 8'b1111_1111;
       end 
      end
      
           
    
endmodule
