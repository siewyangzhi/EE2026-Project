`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2021 13:27:45
// Design Name: 
// Module Name: test_bounce
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


module test_bounce(

    );
    reg CLOCK;
        reg pushbutton;
        reg[12:0] pixel = 0;
        wire signal;
        wire [15:0] RGB;
        //wire pmodoledrgb_cs,pmodoledrgb_sdin,pmodoledrgb_sclk,pmodoledrgb_d_cn,pmodoledrgb_resn,pmodoledrgb_vccen,pmodoledrgb_pmoden;
        //top_student test(CLOCK, pushbutton,pmodoledrgb_cs,pmodoledrgb_sdin,pmodoledrgb_sclk,pmodoledrgb_d_cn,pmodoledrgb_resn,pmodoledrgb_vccen,pmodoledrgb_pmoden);
       // top_student TS(CLOCK,pushbutton,signal);
       Draw_Pixel DP(CLOCK,pixel,2,0,RGB);
        initial begin
            CLOCK = 0;
           // pushbutton =0; #10;
           // pushbutton = 1; #27;
            pushbutton=0;
        end  
        always begin
             #5 CLOCK = ~CLOCK;          
        end
        
        always begin
            #30 pixel = pixel + 1;
        end
        
    endmodule
