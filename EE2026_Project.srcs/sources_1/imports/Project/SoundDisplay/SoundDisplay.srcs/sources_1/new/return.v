`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2021 18:03:17
// Design Name: 
// Module Name: return
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


module return(
    input clk_sample,
    input fast,
    input [15:0] current,
    output reg [7:0] Zmode = 0,
    output reg [7:0] Zleft = 0,
    output reg [7:0] Zright = 0,
    output reg [15:0] peak = 0, // led
    output reg [5:0] level = 0,
    output reg [15:0] max = 0
    );
    
    reg [15:0] counter = 0;
    reg [15:0] find_largest = 0;
    
    
    always @ (posedge clk_sample)//clk_sample
    begin
        counter <= (counter == 2000) ? 0 : counter + 1; //2000
        find_largest <= (counter == 2000) ? 0 : ( (current > find_largest) ? current : find_largest) ; //2000 // delete counter paart
        max <= (counter == 2000) ?  find_largest : max; //2000
    end
    
    always @ (posedge fast)
    begin
        if ( max >= 0 && max < 2096 )
        begin // level 0 L 
            peak <= 16'b1;
            Zmode <= 8'b11000111;
            Zleft <= 8'b11111111;
            Zright<= 8'b11000000;
            level <= 0;
        end
        else begin
        if ( max >= 2096 && max < 2184 ) 
        begin // level 1 L 
            peak <= 16'b11;
            Zmode <= 8'b11000111;
            Zleft <= 8'b11111111;
            Zright<= 8'b11111001;
            level <= 1;
        end
        else begin
        if ( max >= 2184 && max < 2320 ) 
        begin // level 2 L 
            peak <= 16'b111;
            Zmode <= 8'b11000111;
            Zleft <= 8'b11111111;
            Zright<= 8'b10100100;
            level <= 2;
        end
        else begin
        if ( max >= 2320 && max < 2456 ) 
        begin // level 3 L 
            peak <= 16'b1111;
            Zmode <= 8'b11000111;
            Zleft <= 8'b11111111;
            Zright<= 8'b10110000;
            level <= 3;
        end
        else begin
        if ( max >= 2456 && max < 2592 ) 
        begin // level 4 L 
            peak <= 16'b11111;
            Zmode <= 8'b11000111;
            Zleft <= 8'b11111111;
            Zright<= 8'b10011001;
            level <= 4;
        end
        else begin
        if ( max >= 2592 && max < 2728 ) 
        begin // level 5 L 
            peak <= 16'b111111;
            Zmode <= 8'b11000111;
            Zleft <= 8'b11111111;
            Zright<= 8'b10010010;
            level <= 5;
        end   
        else begin
        if ( max >= 2728 && max < 2864) //change from here 
        begin // level 6 M
            peak <= 16'b1111111;
            Zmode <= 8'b11101010;
            Zleft <= 8'b11111111;
            Zright<= 8'b10000010;
            level <= 6;
        end  
        else begin
        if ( max >= 2862 && max < 3000 ) // atmospher noise
        begin // level 7 M
            peak <= 16'b11111111;
            Zmode <= 8'b11101010;
            Zleft <= 8'b11111111;
            Zright<= 8'b11111000;
            level <= 7;
        end  
        else begin
        if ( max >= 3000 && max < 3136 ) 
        begin // level 8 M
            peak <= 16'b111111111;
            Zmode <= 8'b11101010;
            Zleft <= 8'b11111111;
            Zright<= 8'b10000000;
            level <= 8;
        end
        else begin
        if ( max >= 3136 && max < 3272 ) 
        begin // level 9 M
            peak <= 16'b1111111111;
            Zmode <= 8'b11101010;
            Zleft <= 8'b11111111;
            Zright<= 8'b10010000;
            level <= 9;
        end
        else begin
        if ( max >= 3272 && max < 3408 ) 
        begin // level 10 M
            peak <= 16'b11111111111;
            Zmode <= 8'b11101010;
            Zleft <= 8'b11111001;
            Zright<= 8'b11000000;
            level <= 10;
        end
        else begin
        if ( max >= 3408 && max < 3544 ) 
        begin // level 11 H
            peak <= 16'b111111111111;
            Zmode <= 8'b10001001;
            Zleft <= 8'b11111001;
            Zright<= 8'b11111001;
            level <= 11;
        end
        else begin
        if ( max >= 3544 && max < 3680 ) 
        begin // level 12 H 
            peak <= 16'b1111111111111;
            Zmode <= 8'b10001001;
            Zleft <= 8'b11111001;
            Zright<= 8'b10100100;
            level <= 12;
        end
        else begin
        if ( max >= 3680 && max < 3816 ) 
        begin // level 13 H 
            peak <= 16'b11111111111111;
            Zmode <= 8'b10001001;
            Zleft <= 8'b11111001;
            Zright<= 8'b10110000;
            level <= 13;
        end
        else begin
        if ( max >= 3816 && max < 3952 ) 
        begin // level 14 H 
            peak <= 16'b111111111111111;
            Zmode <= 8'b10001001;
            Zleft <= 8'b11111001;
            Zright<= 8'b10011001;
            level <= 14;
        end
        else begin
        if ( max >= 3952 && max < 4096 ) 
        begin // level 15 H
            peak <= 16'b1111111111111111;
            Zmode <= 8'b10001001;
            Zleft <= 8'b11111001;
            Zright<= 8'b10010010;
            level <= 15;
        end
        end
        end
        end
        end
        end
        end
        end
        end
        end
        end
        end
        end
        end
        end
        end
        end
        

    
endmodule
