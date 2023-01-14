`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2021 14:53:14
// Design Name: 
// Module Name: draw_menu
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


module draw_menu(
input CLK,
input [12:0] pixel_index,
input sw,
input LeftBtn,
input RightBtn,
output reg position = 0, ///Moving the menu.
output reg [15:0] PIXEL_DATA 
    );
    reg [6:0] row = 0;
    reg [6:0] column = 0;
    
  always @(posedge CLK) 
  begin
     if (sw == 1)
     begin    
     
     if(position == 0 && RightBtn == 1)
     begin
     position = 1;
     
     end 
     
     else if (position == 1 && LeftBtn == 1)
     begin
     position = 0;
     end
     
     
            row <= pixel_index / 96;
            column <= pixel_index % 96;   
        /////
        if(pixel_index >= 47 && pixel_index <= 47)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 143)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 239)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 335)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 431)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 527)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 623)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 719)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 815)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 911)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 1007)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 1103)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 1199)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 1295)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 1391)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 1487)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 1583)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 1679)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 1775)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 1871)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 1967)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 2063)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 2159)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 2255)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 2351)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 2447)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 2543)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 2639)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 2735)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 2831)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index >= 2897 && pixel_index <= 2899)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 2927)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index >= 2993 && pixel_index <= 2995)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3023)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index >= 3043 && pixel_index <= 3049)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3088)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3092)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3119)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3138)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3146)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3215)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index >= 3243 && pixel_index <= 3244)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3311)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3340)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index >= 3377 && pixel_index <= 3379)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3407)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index >= 3436 && pixel_index <= 3437)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3472)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3476)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3503)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3533)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3568)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3572)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3599)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3629)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3664)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3668)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3695)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3725)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3760)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3764)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3791)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3821)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3856)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index >= 3860 && pixel_index <= 3863)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3887)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3916)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3952)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index >= 3956 && pixel_index <= 3959)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 3983)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index >= 4011 && pixel_index <= 4012)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4048)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4052)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index >= 4056 && pixel_index <= 4058)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4079)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index >= 4106 && pixel_index <= 4107)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4144)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4148)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4152)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index >= 4155 && pixel_index <= 4157)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4175)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index >= 4201 && pixel_index <= 4202)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4240)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4244)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4248)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index >= 4251 && pixel_index <= 4253)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4271)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index >= 4296 && pixel_index <= 4297)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4336)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4340)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4344)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4347)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4350)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4367)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4391)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index >= 4431 && pixel_index <= 4432)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4436)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4440)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4443)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4447)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4463)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index >= 4486 && pixel_index <= 4487)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index >= 4527 && pixel_index <= 4528)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4532)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4536)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4539)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4543)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4559)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4582)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4622)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4624)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4635)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4639)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4655)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4678)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4718)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4735)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4751)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4774)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4814)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4831)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4847)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4870)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4910)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4927)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4943)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 4966)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 5006)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 5022)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 5039)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 5103)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 5118)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 5135)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 5199)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 5214)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 5231)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 5296)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index >= 5308 && pixel_index <= 5309)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 5327)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index >= 5393 && pixel_index <= 5403)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 5423)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 5446)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index >= 5489 && pixel_index <= 5499)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 5519)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 5615)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 5711)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 5807)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 5903)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 5999)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index == 6095)
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        else if(pixel_index >= 48 && pixel_index <= 95)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 144 && pixel_index <= 191)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 240 && pixel_index <= 287)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 336 && pixel_index <= 383)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 432 && pixel_index <= 479)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 528 && pixel_index <= 575)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 624 && pixel_index <= 671)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 720 && pixel_index <= 767)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 816 && pixel_index <= 863)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 912 && pixel_index <= 959)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1008 && pixel_index <= 1055)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1104 && pixel_index <= 1151)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1200 && pixel_index <= 1247)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1253 && pixel_index <= 1257)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1260 && pixel_index <= 1261)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1264 && pixel_index <= 1266)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1271 && pixel_index <= 1275)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1278 && pixel_index <= 1279)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1282 && pixel_index <= 1284)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1296 && pixel_index <= 1303)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1308)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1312)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1314 && pixel_index <= 1315)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1317)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1321 && pixel_index <= 1324)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1326 && pixel_index <= 1328)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1330)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1332 && pixel_index <= 1334)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1336 && pixel_index <= 1343)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1351)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1355)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1358)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1360)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1363)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1369)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1373)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1376)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1378)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1381)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1392 && pixel_index <= 1399)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1401 && pixel_index <= 1405)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1407 && pixel_index <= 1408)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1411)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1413)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1415 && pixel_index <= 1416)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1418 && pixel_index <= 1420)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1423)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1426)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1428 && pixel_index <= 1430)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1432 && pixel_index <= 1439)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1447)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1451 && pixel_index <= 1454)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1456 && pixel_index <= 1458)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1465)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1469 && pixel_index <= 1472)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1474 && pixel_index <= 1476)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1488 && pixel_index <= 1495)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1499 && pixel_index <= 1501)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1503 && pixel_index <= 1504)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1506)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1509)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1511 && pixel_index <= 1512)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1514 && pixel_index <= 1516)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1518)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1520)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1522 && pixel_index <= 1523)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1527 && pixel_index <= 1535)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1543)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1547)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1550)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1552)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1561)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1565)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1568)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1570)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1584 && pixel_index <= 1591)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1593 && pixel_index <= 1597)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1599 && pixel_index <= 1600)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1602 && pixel_index <= 1603)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1605)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1607 && pixel_index <= 1608)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1610 && pixel_index <= 1612)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1614 && pixel_index <= 1616)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1618 && pixel_index <= 1620)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1622 && pixel_index <= 1631)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1639)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1643)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1646)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1648)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1657)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1661)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1664)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1666)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1680 && pixel_index <= 1687)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1689 && pixel_index <= 1692)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1696)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1698 && pixel_index <= 1699)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1701)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1705 && pixel_index <= 1708)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1710 && pixel_index <= 1712)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1714 && pixel_index <= 1716)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1718 && pixel_index <= 1727)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1776 && pixel_index <= 1823)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1833 && pixel_index <= 1837)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1839 && pixel_index <= 1841)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1843)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1848 && pixel_index <= 1851)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1854 && pixel_index <= 1856)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1872 && pixel_index <= 1884)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1888 && pixel_index <= 1889)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1892 && pixel_index <= 1893)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1895 && pixel_index <= 1896)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1898)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1900 && pixel_index <= 1901)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1903)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1907 && pixel_index <= 1919)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1931)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1936)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1939)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1944)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1949)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1968 && pixel_index <= 1979)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1981 && pixel_index <= 1984)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1986 && pixel_index <= 1987)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1989)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 1991 && pixel_index <= 1992)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1994)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1997)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 1999)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2001 && pixel_index <= 2002)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2004 && pixel_index <= 2015)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 2027)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 2032)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 2035)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2040 && pixel_index <= 2042)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2046 && pixel_index <= 2047)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2064 && pixel_index <= 2076)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2079 && pixel_index <= 2080)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2082 && pixel_index <= 2083)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 2085)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2087 && pixel_index <= 2088)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 2090)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 2092)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 2095)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2097 && pixel_index <= 2098)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2100 && pixel_index <= 2111)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 2123)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 2128)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 2131)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 2136)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 2144)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2160 && pixel_index <= 2174)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 2176)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2178 && pixel_index <= 2179)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 2181)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2183 && pixel_index <= 2184)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 2186)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2188 && pixel_index <= 2189)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 2191)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2193 && pixel_index <= 2194)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2196 && pixel_index <= 2207)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 2219)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2223 && pixel_index <= 2225)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2227 && pixel_index <= 2230)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2232 && pixel_index <= 2235)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2237 && pixel_index <= 2239)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2256 && pixel_index <= 2267)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2271 && pixel_index <= 2273)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2276 && pixel_index <= 2278)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2281 && pixel_index <= 2282)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2284 && pixel_index <= 2285)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index == 2287)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2291 && pixel_index <= 2303)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2352 && pixel_index <= 2399)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2448 && pixel_index <= 2495)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2544 && pixel_index <= 2591)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2640 && pixel_index <= 2687)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2736 && pixel_index <= 2783)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2832 && pixel_index <= 2879)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 2928 && pixel_index <= 2975)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 3024 && pixel_index <= 3042)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 3050 && pixel_index <= 3071)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 3120 && pixel_index <= 3137)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 3139 && pixel_index <= 3145)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 3147 && pixel_index <= 3167)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 3216 && pixel_index <= 3242)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 3245 && pixel_index <= 3263)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 3312 && pixel_index <= 3339)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 3341 && pixel_index <= 3359)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 3408 && pixel_index <= 3435)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 3438 && pixel_index <= 3455)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 3504 && pixel_index <= 3532)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 3534 && pixel_index <= 3551)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 3600 && pixel_index <= 3628)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 3630 && pixel_index <= 3647)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 3696 && pixel_index <= 3724)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 3726 && pixel_index <= 3743)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 3792 && pixel_index <= 3820)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 3822 && pixel_index <= 3839)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 3888 && pixel_index <= 3915)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 3917 && pixel_index <= 3935)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 3984 && pixel_index <= 4010)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 4013 && pixel_index <= 4031)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 4080 && pixel_index <= 4105)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 4108 && pixel_index <= 4127)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 4176 && pixel_index <= 4200)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 4203 && pixel_index <= 4223)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 4272 && pixel_index <= 4295)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 4298 && pixel_index <= 4319)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 4368 && pixel_index <= 4390)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 4392 && pixel_index <= 4415)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 4464 && pixel_index <= 4485)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 4488 && pixel_index <= 4511)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 4560 && pixel_index <= 4581)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 4583 && pixel_index <= 4607)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 4656 && pixel_index <= 4677)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 4679 && pixel_index <= 4703)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 4752 && pixel_index <= 4773)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 4775 && pixel_index <= 4799)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 4848 && pixel_index <= 4869)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 4871 && pixel_index <= 4895)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 4944 && pixel_index <= 4965)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 4967 && pixel_index <= 4991)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 5040 && pixel_index <= 5087)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 5136 && pixel_index <= 5183)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 5232 && pixel_index <= 5279)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 5328 && pixel_index <= 5375)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 5424 && pixel_index <= 5445)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 5447 && pixel_index <= 5471)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 5520 && pixel_index <= 5567)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 5616 && pixel_index <= 5663)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 5712 && pixel_index <= 5759)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 5808 && pixel_index <= 5855)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 5904 && pixel_index <= 5951)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 6000 && pixel_index <= 6047)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 6096 && pixel_index <= 6143)
        PIXEL_DATA <= {5'b0,6'b11111111,5'b11111111};
        else if(pixel_index >= 0 && pixel_index <= 46)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 96 && pixel_index <= 142)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 192 && pixel_index <= 238)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 288 && pixel_index <= 334)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 384 && pixel_index <= 430)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 480 && pixel_index <= 526)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 576 && pixel_index <= 622)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 672 && pixel_index <= 718)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 768 && pixel_index <= 814)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 864 && pixel_index <= 910)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 960 && pixel_index <= 1006)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1056 && pixel_index <= 1102)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1152 && pixel_index <= 1198)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1248 && pixel_index <= 1252)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1258 && pixel_index <= 1259)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1262 && pixel_index <= 1263)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1267 && pixel_index <= 1270)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1276 && pixel_index <= 1277)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1280 && pixel_index <= 1281)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1285 && pixel_index <= 1294)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1304 && pixel_index <= 1307)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1309 && pixel_index <= 1311)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1313)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1316)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1318 && pixel_index <= 1320)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1325)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1329)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1331)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1335)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1344 && pixel_index <= 1350)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1352 && pixel_index <= 1354)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1356 && pixel_index <= 1357)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1359)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1361 && pixel_index <= 1362)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1364 && pixel_index <= 1368)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1370 && pixel_index <= 1372)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1374 && pixel_index <= 1375)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1377)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1379 && pixel_index <= 1380)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1382 && pixel_index <= 1390)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1400)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1406)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1409 && pixel_index <= 1410)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1412)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1414)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1417)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1421 && pixel_index <= 1422)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1424 && pixel_index <= 1425)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1427)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1431)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1440 && pixel_index <= 1446)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1448 && pixel_index <= 1450)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1455)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1459 && pixel_index <= 1464)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1466 && pixel_index <= 1468)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1473)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1477 && pixel_index <= 1486)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1496 && pixel_index <= 1498)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1502)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1505)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1507 && pixel_index <= 1508)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1510)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1513)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1517)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1519)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1521)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1524 && pixel_index <= 1526)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1536 && pixel_index <= 1542)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1544 && pixel_index <= 1546)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1548 && pixel_index <= 1549)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1551)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1553 && pixel_index <= 1560)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1562 && pixel_index <= 1564)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1566 && pixel_index <= 1567)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1569)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1571 && pixel_index <= 1582)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1592)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1598)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1601)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1604)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1606)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1609)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1613)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1617)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1621)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1632 && pixel_index <= 1638)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1640 && pixel_index <= 1642)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1644 && pixel_index <= 1645)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1647)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1649 && pixel_index <= 1656)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1658 && pixel_index <= 1660)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1662 && pixel_index <= 1663)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1665)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1667 && pixel_index <= 1678)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1688)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1693 && pixel_index <= 1695)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1697)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1700)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1702 && pixel_index <= 1704)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1709)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1713)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1717)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1728 && pixel_index <= 1774)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1824 && pixel_index <= 1832)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1838)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1842)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1844 && pixel_index <= 1847)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1852 && pixel_index <= 1853)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1857 && pixel_index <= 1870)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1885 && pixel_index <= 1887)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1890 && pixel_index <= 1891)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1894)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1897)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1899)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1902)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1904 && pixel_index <= 1906)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1920 && pixel_index <= 1930)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1932 && pixel_index <= 1935)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1937 && pixel_index <= 1938)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1940 && pixel_index <= 1943)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1945 && pixel_index <= 1948)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1950 && pixel_index <= 1966)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1980)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1985)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1988)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1990)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1993)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1995 && pixel_index <= 1996)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1998)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2000)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2003)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2016 && pixel_index <= 2026)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2028 && pixel_index <= 2031)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2033 && pixel_index <= 2034)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2036 && pixel_index <= 2039)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2043 && pixel_index <= 2045)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2048 && pixel_index <= 2062)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2077 && pixel_index <= 2078)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2081)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2084)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2086)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2089)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2091)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2093 && pixel_index <= 2094)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2096)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2099)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2112 && pixel_index <= 2122)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2124 && pixel_index <= 2127)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2129 && pixel_index <= 2130)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2132 && pixel_index <= 2135)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2137 && pixel_index <= 2143)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2145 && pixel_index <= 2158)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2175)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2177)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2180)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2182)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2185)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2187)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2190)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2192)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2195)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2208 && pixel_index <= 2218)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2220 && pixel_index <= 2222)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2226)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2231)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2236)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2240 && pixel_index <= 2254)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2268 && pixel_index <= 2270)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2274 && pixel_index <= 2275)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2279 && pixel_index <= 2280)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2283)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2286)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2288 && pixel_index <= 2290)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2304 && pixel_index <= 2350)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2400 && pixel_index <= 2446)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2496 && pixel_index <= 2542)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2592 && pixel_index <= 2638)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2688 && pixel_index <= 2734)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2784 && pixel_index <= 2830)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2880 && pixel_index <= 2896)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2900 && pixel_index <= 2926)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2976 && pixel_index <= 2992)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 2996 && pixel_index <= 3022)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3072 && pixel_index <= 3087)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3089 && pixel_index <= 3091)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3093 && pixel_index <= 3118)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3168 && pixel_index <= 3214)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3264 && pixel_index <= 3310)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3360 && pixel_index <= 3376)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3380 && pixel_index <= 3406)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3456 && pixel_index <= 3471)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3473 && pixel_index <= 3475)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3477 && pixel_index <= 3502)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3552 && pixel_index <= 3567)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3569 && pixel_index <= 3571)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3573 && pixel_index <= 3598)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3648 && pixel_index <= 3663)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3665 && pixel_index <= 3667)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3669 && pixel_index <= 3694)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3744 && pixel_index <= 3759)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3761 && pixel_index <= 3763)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3765 && pixel_index <= 3790)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3840 && pixel_index <= 3855)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3857 && pixel_index <= 3859)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3864 && pixel_index <= 3886)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3936 && pixel_index <= 3951)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3953 && pixel_index <= 3955)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 3960 && pixel_index <= 3982)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4032 && pixel_index <= 4047)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4049 && pixel_index <= 4051)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4053 && pixel_index <= 4055)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4059 && pixel_index <= 4078)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4128 && pixel_index <= 4143)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4145 && pixel_index <= 4147)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4149 && pixel_index <= 4151)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4153 && pixel_index <= 4154)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4158 && pixel_index <= 4174)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4224 && pixel_index <= 4239)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4241 && pixel_index <= 4243)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4245 && pixel_index <= 4247)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4249 && pixel_index <= 4250)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4254 && pixel_index <= 4270)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4320 && pixel_index <= 4335)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4337 && pixel_index <= 4339)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4341 && pixel_index <= 4343)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4345 && pixel_index <= 4346)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4348 && pixel_index <= 4349)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4351 && pixel_index <= 4366)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4416 && pixel_index <= 4430)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4433 && pixel_index <= 4435)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4437 && pixel_index <= 4439)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4441 && pixel_index <= 4442)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4444 && pixel_index <= 4446)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4448 && pixel_index <= 4462)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4512 && pixel_index <= 4526)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4529 && pixel_index <= 4531)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4533 && pixel_index <= 4535)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4537 && pixel_index <= 4538)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4540 && pixel_index <= 4542)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4544 && pixel_index <= 4558)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4608 && pixel_index <= 4621)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4623)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4625 && pixel_index <= 4634)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4636 && pixel_index <= 4638)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4640 && pixel_index <= 4654)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4704 && pixel_index <= 4717)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4719 && pixel_index <= 4734)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4736 && pixel_index <= 4750)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4800 && pixel_index <= 4813)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4815 && pixel_index <= 4830)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4832 && pixel_index <= 4846)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4896 && pixel_index <= 4909)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4911 && pixel_index <= 4926)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4928 && pixel_index <= 4942)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 4992 && pixel_index <= 5005)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 5007 && pixel_index <= 5021)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 5023 && pixel_index <= 5038)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 5088 && pixel_index <= 5102)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 5104 && pixel_index <= 5117)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 5119 && pixel_index <= 5134)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 5184 && pixel_index <= 5198)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 5200 && pixel_index <= 5213)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 5215 && pixel_index <= 5230)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 5280 && pixel_index <= 5295)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 5297 && pixel_index <= 5307)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 5310 && pixel_index <= 5326)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 5376 && pixel_index <= 5392)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 5404 && pixel_index <= 5422)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 5472 && pixel_index <= 5488)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 5500 && pixel_index <= 5518)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 5568 && pixel_index <= 5614)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 5664 && pixel_index <= 5710)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 5760 && pixel_index <= 5806)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 5856 && pixel_index <= 5902)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 5952 && pixel_index <= 5998)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 6048 && pixel_index <= 6094)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
    
       
    
        ////    
               
       //Code out pink the borders.
           if(((row >= 1 && row <=62) && (column == 0 || column == 1 || column == 46 || column == 45)) || ((row == 0 || row == 1 || row == 62 || row == 63) && (column >= 0 && column <= 46)))
           begin 
                if(position == 1)
                    begin
                    PIXEL_DATA <= 'hF81F;
                  // PIXEL_DATA  <= 16'b0000000000000000;
                    end
                else
                    begin 
                    PIXEL_DATA <= 16'b1111111111111111;
                    end
           end
         //Code out blue border
            else if(((row >= 1 && row <=62) && (column == 48 ||column == 49 || column == 95 || column == 94)) || ((row == 0 ||row == 1 || row == 62|| row == 63) && (column >= 48 && column <= 95)))
             begin 
                  if(position == 0)
                      begin
                      PIXEL_DATA <= 'h07FF;
                      end
                  else
                      begin 
                      PIXEL_DATA <= 16'b1111111111111111;
                      end
             end   
     
                  
       end 
   end
endmodule


