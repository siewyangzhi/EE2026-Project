`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2021 22:40:47
// Design Name: 
// Module Name: assign_cm
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


module assign_cm(
    input clk_fast,
    input [3:0] press,
    input [15:0] sample,
    input [21:0]value0,value5,value10,value15,
    output reg [7:0] msb = 8'b11111111,
    output reg [7:0] lsb = 8'b11111111,
    output reg [4:0] send_cm = 0
    );
    
    reg [15:0] diff1 = 0, diff2 = 0,diff3 = 0;
    
    always @ (posedge clk_fast)
    begin
        diff1 = (value0-value5)/5;
        diff2 = (value5-value10)/5;
        diff3 = (value10-value15)/5;
        if (press == 5)
        begin
            if (sample >= value0)
            begin //0cm
                msb = 8'b11111111;
                lsb = 192;
                send_cm = 0;
            end
            else begin
            if (sample < value0 && sample >= (value5 + (4*diff1)))
            begin  
                msb = 8'b11111111;// 1 cm
                lsb = 249;
                send_cm = 1;
            end
            else begin
            if (sample < (value5 + (4*diff1)) && sample >= (value5 + (3*diff1)))
            begin  
                msb = 8'b11111111;// 2 cm
                lsb = 164;
                send_cm = 2;
            end
            else begin
            if (sample < (value5 + (3*diff1)) && sample >= (value5 + (2*diff1)))
            begin  
                msb = 8'b11111111;// 3 cm
                lsb = 176;
                send_cm = 3;
            end
            else begin
            if (sample < (value5 + (2*diff1)) && sample >= (value5 + (diff1)))
            begin  
                msb = 8'b11111111;// 4 cm
                lsb = 153;
                send_cm = 4;
            end
            else begin
            if (sample < (value5 + (diff1)) && sample >= (value5))
            begin  
                msb = 8'b11111111;// 5 cm
                lsb = 146;
                send_cm = 5;
            end
            else begin
            if (sample < (value5) && sample >= (value10 + (4*diff2)))
            begin  
                msb = 8'b11111111;// 6 cm
                lsb = 130;
                send_cm = 6;
            end
            else begin
            if (sample < (value10 + (4*diff2)) && sample >= (value10 + (3*diff2)))
            begin  
                msb = 8'b11111111;// 7 cm
                lsb = 248;
                send_cm = 7;
            end
            else begin
            if (sample < (value10 + (3*diff2)) && sample >= (value10 + (2*diff2)))
            begin  
                msb = 8'b11111111;// 8 cm
                lsb = 128;
                send_cm = 8;
            end
            else begin
            if (sample < (value10 + (2*diff2)) && sample >= (value10 + (diff2)))
            begin  
                msb = 8'b11111111;// 9 cm
                lsb = 144;
                send_cm = 9;
            end
            else begin
            if (sample < (value10 + (diff2)) && sample >= (value10))
            begin  
                msb = 249;// 10 cm
                lsb = 192;
                send_cm = 10;
            end
            else begin
            if (sample < value10 && sample >= (value15 + (4*diff3)))
            begin  
                msb = 249;// 11 cm
                lsb = 249;
                send_cm = 11;
            end
            else begin
            if (sample < (value15 + (4*diff3)) && sample >= (value15 + (3*diff3)))
            begin  
                msb = 249;// 12 cm
                lsb = 164 ;
                send_cm = 12;
            end
            else begin
            if (sample < (value15 + (3*diff3)) && sample >= (value15 + (2*diff3)))
            begin  
                msb = 249;// 13 cm
                lsb =  176 ;
                send_cm = 13;
            end
            else begin
            if (sample < (value15 + (2*diff3)) && sample >= (value15 + (diff3)))
            begin  
                msb = 249;// 14 cm
                lsb =  153 ;
                send_cm = 14;
            end
            else begin
            if (sample < (value15 + (diff3)) && sample >= (value15))
            begin  
                msb = 249;// 15 cm
                lsb =  146 ;
                send_cm = 15;
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
            end      
endmodule
