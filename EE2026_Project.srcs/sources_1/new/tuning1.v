`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2021 02:12:32
// Design Name: 
// Module Name: tuning1
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


module tuning1(
    input rst,
    input clk_sample,
    input yz_clk,
    input fast,
    input [15:0] current,
    input tunemode,
    input up,
    input down,
    output reg [15:0] peak = 0, // led
    output reg [5:0] level = 0,
    output reg [6:0] multipler = 10
    );
    
    reg [15:0] counter = 0;
    reg [15:0] find_largest = 0;
    reg [31:0] max = 0;
    reg [15:0] b4value = 0;//invert 
    
    
        
    always @ (posedge clk_sample)//clk_sample
    begin
        counter <= (counter == 2000) ? 0 : counter + 1; //2000
        find_largest <= (counter == 2000) ? 0 : ( (current > find_largest) ? current : find_largest) ; //2000 // delete counter paart
        b4value <= (tunemode == 1) ? ((counter == 2000) ?  find_largest : b4value) : b4value; //2000
    end
    
    always @ (posedge yz_clk,posedge rst)
    begin
        if (rst)
        begin
            multipler <= 10;
        end
        else if (up && tunemode && !rst) 
        begin
            multipler <= (multipler == 20)? 20 :  multipler + 1;
        end
        else if (down && tunemode && !rst)
        begin
            multipler <= (multipler == 1)? 1 :  multipler - 1;
        end
        max <= (tunemode ==1)?( (b4value * multipler) / 10): 0; // do value after multipler
        end
     
       
        
        
   always @ (posedge fast)
   begin     
        if ( max >= 0 && max < 256 )
        begin // level 0 L 
            peak <= 16'b1;
            level <= 0;
        end
        else begin
        if ( max >= 256 && max < 512 ) 
        begin // level 1 L 
            peak <= 16'b11;
            level <= 1;
        end
        else begin
        if ( max >= 512 && max < 768 ) 
        begin // level 2 L 
            peak <= 16'b111;
            level <= 2;
        end
        else begin
        if ( max >= 768 && max < 1024 ) 
        begin // level 3 L 
            peak <= 16'b1111;
            level <= 3;
        end
        else begin
        if ( max >= 1024 && max < 1280 ) 
        begin // level 4 L 
            peak <= 16'b11111;
            level <= 4;
        end
        else begin
        if ( max >= 1280 && max < 1536 ) 
        begin // level 5 L 
            peak <= 16'b111111;
            level <= 5;
        end   
        else begin
        if ( max >= 1536 && max <1792) 
        begin // level 6 M
            peak <= 16'b1111111;
            level <= 6;
        end  
        else begin
        if ( max >= 1792 && max < 2048 ) // atmospher noise
        begin // level 7 M
            peak <= 16'b11111111;
            level <= 7;
        end  
        else begin
        if ( max >= 2048 && max < 2304 ) 
        begin // level 8 M
            peak <= 16'b111111111;
            level <= 8;
        end
        else begin
        if ( max >= 2304 && max < 2560 ) 
        begin // level 9 M
            peak <= 16'b1111111111;
            level <= 9;
        end
        else begin
        if ( max >= 2560 && max < 2816 ) 
        begin // level 10 M
            peak <= 16'b11111111111;
            level <= 10;
        end
        else begin
        if ( max >= 2816 && max < 3072 ) 
        begin // level 11 H
            peak <= 16'b111111111111;
            level <= 11;
        end
        else begin
        if ( max >= 3072 && max < 3328 ) 
        begin // level 12 H 
            peak <= 16'b1111111111111;
            level <= 12;
        end
        else begin
        if ( max >= 3328 && max < 3584) 
        begin // level 13 H 
            peak <= 16'b11111111111111;
            level <= 13;
        end
        else begin
        if ( max >= 3584 && max < 3840 ) 
        begin // level 14 H 
            peak <= 16'b111111111111111;
            level <= 14;
        end
        else begin
        if ( max >= 3840 ) 
        begin // level 15 H
            peak <= 16'b1111111111111111;
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