`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2021 10:50:51
// Design Name: 
// Module Name: top_student
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


module top_student(
    input CLK,
    input ResetSwitch,
    input ChangeBorderSwitch,
    input ManualSwitch,
    input OffBorderSwitch,
    input OffVolumeSwitch,
    input Color_Scheme_Type,
    input switch0,switch1,checkraw6,
    input taptapmode, tunemode,sonarmode,MenuSwitch, speedo, //modes
    input Left_Btn, 
    input Up_Btn,Down_Btn,
    input Right_Btn,
    input  J_MIC3_Pin3,   // Connect from this signal to Audio_Capture.v
    output J_MIC3_Pin1,   // Connect to this signal from Audio_Capture.v
    output J_MIC3_Pin4,    // Connect to this signal from Audio_Capture.v
    output [3:0] AN,
    output [7:0] Z,
    output reg [15:0] led = 0,
    output pmodoledrgb_cs,pmodoledrgb_sdin,pmodoledrgb_sclk,pmodoledrgb_d_cn,pmodoledrgb_resn,pmodoledrgb_vccen,pmodoledrgb_pmoden
);


 wire clk62p;
 wire rst,oledrst;
 wire D_Left;
 wire D_Right;
 wire D_Centre;
 wire D_Down;
 wire D_Up;
 wire [6:0] Left_Col;
 wire [12:0] PixelIndex;
 wire frame_begin;
 wire sending_pixel;
 wire sample_pixel;
 wire [4:0] test_state;
 reg [15:0] RGB;
 wire [15:0] RGBGAME,RGBDISPLAY,RGBSONAR,RGBMenu,RGBALTVOLUME,RGBManual;
 wire clk2;
 wire Border_Type;
 wire [10:0] High_position;
 wire [10:0] Mid_position;
 wire [10:0] Low_position;
 wire one_sec_signal;
 wire [13:0] counter;
 wire [1:0] High_Rating; //0 for nothing, 1 for good , 2 for bad.
 wire [1:0] Mid_Rating ;
 wire [1:0] Low_Rating ;
 wire position;
 
 
// ============== FALICIA ============//
wire clk_20k,clk_segments,clk_fast,clk11,clk_half,clk_one,clk_three,clk_five;//clks
wire [7:0] Zmode,Zleft,Zright,Zmode_final,Zleft_final,Zright_final,Zpadded;//segments
wire [5:0] level_send,level_send2;//level to yz
reg [5:0] level_send_final;
wire [15:0] mic_in, peak,peak2,value_sampled,led_score,led_slow,led_medium,led_high;//led control
wire [21:0] value_0cm, value_5cm, value_10cm,value_15cm;
wire [7:0]Z0,Z1,Z2,Z3,Z0X,Z1X,Z2X,Z3X,Z0X1,Z1X1,Z2X1,Z3X1,Z0X2,Z1X2,Z2X2,Z3X2,Z0X3,Z1X3,Z2X3,Z3X3,sig, leastsig; //wire for raw data
wire [7:0]MSB,LSB;//wire to display plexer
wire [7:0] speed_Z0,speed_Z1,speed_Z2,speed_Z3; // speed display
wire top_signal,btm_signal;
wire [6:0] multipler;
wire [3:0] presses; // up to 4 for sampling
wire [3:0] countdown; // for 5sec
wire stop1,stop2,stop3,stop4;
wire [4:0]led0,led5,led10,led15;
wire [7:0] tap_Z0,tap_Z1,tap_Z2,tap_Z3;
wire [4:0] score;
wire [4:0] send_cm;



clk20k sample(CLK, 2499, clk_20k);//20khz
precise_clk fastest (CLK, 3,clk_fast); //12.5Mhz
precise_clk clk11hz (CLK, 4545453, clk11); // 11hz
precise_clk onesecond (CLK,49999999, clk_one) ;//1hz, 1 sec clock
precise_clk halfsecond (CLK,5555555,clk_half);//0.1 seconds
precise_clk threesecond (CLK,33333332, clk_three);//0.6 seconds
precise_clk fivesecond (CLK,149999999, clk_five);// 2 seconds.
precise_clk segments_clk_381 (CLK, 131233, clk_segments);//381hz
Debounced_Signal button_ontop (clk2,0, Up_Btn, top_signal);// button up
Debounced_Signal button_onbottom (clk2,0, Down_Btn, btm_signal);// button up

return levelX_segments (clk_20k, clk_fast, mic_in, Zmode, Zleft, Zright, peak, level_send,value_sampled);//retrns the  segment/ led/ level yz
tuning1 return4tune (rst,clk_20k, clk2,clk_fast, mic_in, tunemode,top_signal,btm_signal, peak2, level_send2, multipler);//edit leve_send

Audio_Capture mic (CLK, clk_20k, J_MIC3_Pin3, J_MIC3_Pin1, J_MIC3_Pin4, mic_in); //get the value of 12 bit mic_in value

display_val show_raw_data (clk11,value_sampled,Z0,Z1,Z2,Z3);// shows the 7seg for raw data mic_in, value_sampled
display_plexer show_multiply_by ( clk11,multipler, MSB, LSB); //show the multiplex from tuning1
seg_assign segment_decider(presses,clk_fast,speedo,taptapmode,tunemode, switch1,checkraw6,sonarmode,Zmode, Zleft, Zright,Z0,Z1, Z2, Z3,Z0X,Z1X,Z2X,Z3X,Z0X1,Z1X1,Z2X1,Z3X1,Z0X2,Z1X2,Z2X2,Z3X2,Z0X3,Z1X3,Z2X3,Z3X3,MSB,LSB,sig, leastsig,tap_Z0,tap_Z1,tap_Z2,tap_Z3, speed_Z0,speed_Z1,speed_Z2,speed_Z3,Zmode_final, Zleft_final, Zright_final,Zpadded); //decide segments
segments_display mode (clk_segments, clk_fast, Zpadded,Zmode_final, Zleft_final, Zright_final, AN, Z); // rotate all segments result
//split3level taptap (clk_20k, clk_fast, mic_in, peak, level_send_tap);



//=====================speedometer====================//
simulate_led for_slow (clk_fast, speedo, clk_five, led_slow);
simulate_led for_medium (clk_fast,speedo, clk_three, led_medium);
simulate_led for_fast (clk_fast, speedo, clk_half, led_high);
volume_display_two vdt (CLK,speedo,PixelIndex,level_send_final,RGBALTVOLUME);
show_speed speed_seg (clk_fast, speedo, level_send_final, speed_Z0,speed_Z1,speed_Z2,speed_Z3);

//=====================speedometer====================//



//======sonar main module=====//
// calibrate the 4 values

btn_status counts_btn_press (rst,clk2, sonarmode, top_signal, presses, countdown); // pass out presses for sample and countdown for 5sec
count5_1 zero (rst,clk_fast,clk_one,countdown, stop1,led0); // count to 5 and flag 
count5_2 five  (rst,clk_fast,clk_one,countdown, stop2,led5);//5cm
count5_3 ten (rst,clk_fast,clk_one,countdown, stop3,led10);
count5_4 fifteen (rst,clk_fast,clk_one,countdown, stop4,led15);

//sample 5 sec take average.
calibrations set_for0 (rst,presses,stop1, clk_20k, mic_in, value_0cm); //each press samples one value
display_val show_0 (clk_fast,value_0cm,Z0X,Z1X,Z2X,Z3X);
callibrate2 set_for5 (rst,presses,stop2, clk_20k, mic_in, value_5cm);
display_val show_5 (clk_fast,value_5cm,Z0X1,Z1X1,Z2X1,Z3X1);
callibrate3 set_for10 (rst,presses,stop3, clk_20k, mic_in, value_10cm);
display_val show_10 (clk_fast,value_10cm,Z0X2,Z1X2,Z2X2,Z3X2);
callibrate4 set_for15 (rst,presses,stop4, clk_20k, mic_in, value_15cm);
display_val show_15 (clk_fast,value_15cm,Z0X3,Z1X3,Z2X3,Z3X3);

//module to split the cms by mapping louder more accurate at further dist, softer more accurate at shorter dist
assign_cm map_cm (clk_fast,presses,value_sampled,value_0cm, value_5cm, value_10cm,value_15cm, sig, leastsig, send_cm);//send cm for yangzhi

//======sonar main module=====//




//========decide what to send=========//
always @(posedge clk_fast)
begin
    if (level_send >= 0 && level_send <= 2 && taptapmode == 1 && tunemode == 0 && sonarmode == 0 && speedo == 0 && MenuSwitch == 1)
     begin
        level_send_final = 0;
     end
     else
    if (level_send >= 3 && level_send < 6 && taptapmode == 1 && tunemode == 0 && sonarmode == 0 && speedo == 0 && MenuSwitch == 1)//taptap game
        begin
            level_send_final = 1;//hml
        end
    else 
    if (level_send >= 6 && level_send < 11 && taptapmode == 1 && tunemode == 0 && sonarmode == 0 && speedo == 0 && MenuSwitch == 1) //taptap gmae
        begin
            level_send_final = 2;
            end
        else
    if (level_send >= 11 && level_send <= 15 && taptapmode == 1 && tunemode == 0&& sonarmode == 0 && speedo == 0 && MenuSwitch == 1)
        begin
            level_send_final = 3;
        end
    else
    if (taptapmode == 0 && tunemode == 0 && sonarmode == 0 && (speedo == 0 || speedo ==1))//normal and alternate display
        begin
            level_send_final = level_send; // 15
        end
    else 
    if (taptapmode == 0 && tunemode == 1 && sonarmode == 0 && speedo == 0)//autotune part
        begin
            level_send_final = level_send2;
        end
    else 
    if (taptapmode == 0 && tunemode == 0 && sonarmode == 1 && speedo == 0 )//cm
        begin
                level_send_final = send_cm;
            end
    end
   
    
    
    
    
 //==========decide led display===========//
 always @ (posedge clk_fast) // switching btw two modes foe tune and taptaps of led
    if (switch0 == 1 && tunemode == 0 && sonarmode == 0 && taptapmode == 0 && speedo == 0) // function to display up to 12 led
    begin
        led = mic_in;
    end
    else begin
    if (switch0 == 0 && tunemode == 0 && sonarmode == 0 && taptapmode == 0 && speedo == 0) // function to display normal peak
    begin
        led = peak;
    end
    else begin 
    if (switch0 == 0 && tunemode == 1 && sonarmode == 0 && taptapmode == 0 && speedo == 0 )// function takes into acc of ambience hence starts at level 8
    begin
        led = peak2;
    end
    else begin 
    if (switch0 == 1 && tunemode == 1 && sonarmode == 0 && taptapmode == 0 && speedo == 0)//12 led 
    begin
        led = mic_in;
    end
    else begin
        if (switch0 == 0 && tunemode == 0 && sonarmode == 0 && taptapmode == 0 && speedo == 1) // function of alt display level leds
        begin
            if (level_send_final >=0 && level_send_final <= 5)
            begin
                led = led_slow;
            end
            else if (level_send_final >= 6 && level_send_final <= 11)
            begin
                led = led_medium;
            end
            else if (level_send_final >= 12 && level_send_final <= 15)
            begin
                led = led_high;
            end
        end
    else begin
    if (switch0 == 0 && tunemode == 0 && sonarmode == 0 && taptapmode == 1 && speedo == 0)
    begin
        led = led_score;
    end
    else begin
    if (switch0 == 0 && tunemode == 0 && sonarmode == 1 && taptapmode == 0 && speedo == 0) // sonar count down
    begin
         if (presses == 0)
         begin
            led = 0;
         end
         else begin
         if (presses == 1)
         begin
            led = led0;
         end
         else begin
         if (presses == 2)
         begin
            led = led5;
         end
         else begin
         if (presses == 3)
         begin
            led = led10;
         end
         else begin
         if (presses == 4)
         begin
            led = led15;
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
      
       


// ======================YZ=====================//
 assign Border_Type = ChangeBorderSwitch;
 slow_clock dut3 (CLK,clk2);
 Precise_Clock PC(CLK,clk62p);
 Debounced_Signal D(clk2,taptapmode,ResetSwitch,rst);//res
  
 clk_one_sec ck (CLK,one_sec_signal);
 
 my_dff dff_one(clk2,Down_Btn,D_Down);
 my_dff dff_two(clk2,Up_Btn,D_Up);
 my_dff dff_three(clk2,ResetSwitch,D_Centre);

//RGB Selection

always @(posedge CLK)
begin
    if(taptapmode == 1 && sonarmode == 0 && MenuSwitch == 1 && position == 0)
    begin
        RGB = RGBGAME;
    end
    
    else if (sonarmode == 1 && taptapmode == 0 && MenuSwitch == 1 && position == 1)
    begin
        RGB = RGBSONAR;
    end
    
    else if(MenuSwitch == 1)
    begin
        RGB = RGBMenu;
    end
    else if(speedo == 1)
    begin
        RGB = RGBALTVOLUME;
    end
    else if(ManualSwitch == 1)
    begin
        RGB = RGBManual;
    end
    else 
    begin
        RGB = RGBDISPLAY;
    end
  
end

//Tap Tap 
 game_best_logic gbl (one_sec_signal,taptapmode,level_send_final,High_position,Mid_position,Low_position);
 draw_game_screen dgs(clk_fast,taptapmode,High_position,Mid_position,Low_position,PixelIndex,D_Down,D_Up,D_Centre,High_Rating,Mid_Rating,Low_Rating,counter,RGBGAME);
 Debounced_Signal D3(clk2,0,Left_Btn,D_Left);
 Debounced_Signal D4(clk2,0,Right_Btn,D_Right);
 draw_menu dm (clk_fast,PixelIndex,MenuSwitch,D_Left,D_Right,position,RGBMenu);
 Shifting_Oled SO(clk2,Border_Type,D_Left,D_Right,Left_Col);
 score_generator sg(clk2,taptapmode,D_Left,D_Down,D_Up,D_Centre,High_position[0],Mid_position[0],Low_position[0],score);

/// Normal Volume display. 
 Draw_Pixel DP (CLK,PixelIndex,level_send_final,Left_Col,Border_Type,OffBorderSwitch,OffVolumeSwitch,Color_Scheme_Type,RGBDISPLAY);
 
 //Manual Display.
 Manual_Display MD(CLK,ManualSwitch,PixelIndex,RGBManual);
 //Sonar 
 sonar_display sd(clk_fast,sonarmode,level_send_final,PixelIndex,RGBSONAR);
 Oled_Display OD(clk62p,rst,frame_begin,sending_pixel,sample_pixel,PixelIndex,RGB,pmodoledrgb_cs,pmodoledrgb_sdin,pmodoledrgb_sclk,pmodoledrgb_d_cn,pmodoledrgb_resn,pmodoledrgb_vccen,pmodoledrgb_pmoden,test_state);

//========taptap logic =============//
show_ratings gd_or_bad_segs (clk_fast,sonarmode, MenuSwitch, taptapmode, High_Rating,Mid_Rating,Low_Rating,score,tap_Z0,tap_Z1,tap_Z2,tap_Z3);
led_tap_score lit_led_score (clk_fast, taptapmode, score, led_score);

endmodule
