`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2021 11:12:22
// Design Name: 
// Module Name: volume_display_two
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

module volume_display_two(
    input CLK,
    input sw13,
    input [12:0] pixel_index,
    input [5:0] volume,
    output reg [15:0] PIXEL_DATA = 16'b0000000000000000
    );    
    reg [2:0] level =1;
   always @(posedge CLK)
   begin
   // Volume low
 if (sw13 != 0)
 begin
 // Map the volume 
     if(volume >= 0 && volume <= 2)
     begin
     level = 1;
     end
     
     else if(volume >= 3 && volume <= 5)
     begin
     level = 2;
     end
     
    else if(volume >=6 && volume <= 8)
    begin
    level = 3;
    end
    
    else if (volume >= 9 && volume <= 11)
    begin
    level = 4;
    end 
    
    else if(volume >= 12 && volume <= 15)
    begin
    level =5;
    end
    
    if(level == 1)
    begin
        if(pixel_index >= 37 && pixel_index <= 60)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 130 && pixel_index <= 138)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 153 && pixel_index <= 160)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 222 && pixel_index <= 228)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 254 && pixel_index <= 260)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 316 && pixel_index <= 319)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 356 && pixel_index <= 358)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 408 && pixel_index <= 413)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 429 && pixel_index <= 442)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 453 && pixel_index <= 458)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 503 && pixel_index <= 504)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 520 && pixel_index <= 525)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 537 && pixel_index <= 543)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 554 && pixel_index <= 555)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 596 && pixel_index <= 599)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 612 && pixel_index <= 616)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 638 && pixel_index <= 643)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 652 && pixel_index <= 654)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 691 && pixel_index <= 692)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 704 && pixel_index <= 707)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 740 && pixel_index <= 743)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 750 && pixel_index <= 751)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 785 && pixel_index <= 787)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 797 && pixel_index <= 799)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 838 && pixel_index <= 842)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 847 && pixel_index <= 849)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 879 && pixel_index <= 882)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 891 && pixel_index <= 893)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 938 && pixel_index <= 939)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 945 && pixel_index <= 947)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 974 && pixel_index <= 976)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 984 && pixel_index <= 986)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1036 && pixel_index <= 1039)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1042 && pixel_index <= 1044)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1068 && pixel_index <= 1070)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1078 && pixel_index <= 1080)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1135 && pixel_index <= 1137)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1140 && pixel_index <= 1142)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1163 && pixel_index <= 1164)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1173 && pixel_index <= 1174)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1232 && pixel_index <= 1234)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1237 && pixel_index <= 1239)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1258 && pixel_index <= 1259)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1267 && pixel_index <= 1269)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1330 && pixel_index <= 1331)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1335 && pixel_index <= 1336)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1353 && pixel_index <= 1355)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1362 && pixel_index <= 1363)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1427 && pixel_index <= 1428)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1432 && pixel_index <= 1433)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1449)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1456 && pixel_index <= 1458)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1525 && pixel_index <= 1526)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1529 && pixel_index <= 1530)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1544 && pixel_index <= 1545)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1551 && pixel_index <= 1553)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1622 && pixel_index <= 1623)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1626 && pixel_index <= 1627)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1639 && pixel_index <= 1640)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1646 && pixel_index <= 1648)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1719 && pixel_index <= 1720)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1723)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1734 && pixel_index <= 1735)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1741 && pixel_index <= 1743)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1816 && pixel_index <= 1817)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1820)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1830)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1836 && pixel_index <= 1838)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1913 && pixel_index <= 1914)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1916)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1925 && pixel_index <= 1926)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1932 && pixel_index <= 1934)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2009 && pixel_index <= 2010)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2013)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2021)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2028 && pixel_index <= 2029)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2106 && pixel_index <= 2107)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2109)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2116 && pixel_index <= 2117)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2123 && pixel_index <= 2124)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2203 && pixel_index <= 2204)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2206)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2212)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2218 && pixel_index <= 2219)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2300 && pixel_index <= 2302)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2307 && pixel_index <= 2308)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2314 && pixel_index <= 2315)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2396 && pixel_index <= 2398)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2403)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2409 && pixel_index <= 2410)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2493)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2499)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2505 && pixel_index <= 2506)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2594 && pixel_index <= 2595)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2600 && pixel_index <= 2601)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2690)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2696 && pixel_index <= 2697)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2786)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2792 && pixel_index <= 2793)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2882)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2887 && pixel_index <= 2888)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2978)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2983 && pixel_index <= 2984)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3074)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3079 && pixel_index <= 3080)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3170)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3175 && pixel_index <= 3176)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3266)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3271 && pixel_index <= 3272)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3362)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3367 && pixel_index <= 3368)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3458)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3463 && pixel_index <= 3464)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3555)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3559 && pixel_index <= 3560)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3651)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3656 && pixel_index <= 3657)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3747)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3752 && pixel_index <= 3753)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3843 && pixel_index <= 3844)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3848 && pixel_index <= 3849)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3940)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3944 && pixel_index <= 3945)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4036 && pixel_index <= 4037)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4041 && pixel_index <= 4042)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4132 && pixel_index <= 4133)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4137 && pixel_index <= 4138)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4229 && pixel_index <= 4230)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4234 && pixel_index <= 4235)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4326 && pixel_index <= 4327)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4330 && pixel_index <= 4332)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4422 && pixel_index <= 4424)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 4428)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4519 && pixel_index <= 4520)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4524 && pixel_index <= 4525)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4616 && pixel_index <= 4617)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4621 && pixel_index <= 4622)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4713 && pixel_index <= 4714)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4718 && pixel_index <= 4719)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4810 && pixel_index <= 4811)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 4815)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4907 && pixel_index <= 4908)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 4912)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5004 && pixel_index <= 5005)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 5009)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5102 && pixel_index <= 5103)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5106 && pixel_index <= 5107)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5199 && pixel_index <= 5201)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 5204)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5297 && pixel_index <= 5298)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5301 && pixel_index <= 5302)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5394 && pixel_index <= 5395)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 5399)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5492 && pixel_index <= 5493)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5496 && pixel_index <= 5498)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5590 && pixel_index <= 5595)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5688 && pixel_index <= 5695)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5787 && pixel_index <= 5793)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5886 && pixel_index <= 5894)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5986 && pixel_index <= 5994)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1035)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 1162)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 1839)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 2019)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 4035)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 4906)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 5108)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index >= 2255 && pixel_index <= 2262)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 2351 && pixel_index <= 2358)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 2447 && pixel_index <= 2454)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 2543 && pixel_index <= 2550)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 2639 && pixel_index <= 2646)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 2735 && pixel_index <= 2742)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 2831 && pixel_index <= 2838)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 2927 && pixel_index <= 2934)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3023 && pixel_index <= 3030)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3119 && pixel_index <= 3126)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3215 && pixel_index <= 3222)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3311 && pixel_index <= 3318)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3407 && pixel_index <= 3414)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3503 && pixel_index <= 3510)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3599 && pixel_index <= 3606)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3695 && pixel_index <= 3702)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3791 && pixel_index <= 3798)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3887 && pixel_index <= 3894)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3983 && pixel_index <= 3990)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4079 && pixel_index <= 4086)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4175 && pixel_index <= 4182)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4271 && pixel_index <= 4278)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4367 && pixel_index <= 4374)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4463 && pixel_index <= 4470)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4522 && pixel_index <= 4523)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4559 && pixel_index <= 4566)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4618 && pixel_index <= 4620)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4655 && pixel_index <= 4682)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4715 && pixel_index <= 4717)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4751 && pixel_index <= 4778)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4812 && pixel_index <= 4814)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4847 && pixel_index <= 4874)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4909 && pixel_index <= 4911)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4943 && pixel_index <= 4970)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5006 && pixel_index <= 5008)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5039 && pixel_index <= 5066)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5104 && pixel_index <= 5105)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5135 && pixel_index <= 5162)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5202 && pixel_index <= 5203)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5231 && pixel_index <= 5258)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5299 && pixel_index <= 5300)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5396 && pixel_index <= 5398)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5494 && pixel_index <= 5495)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index == 2399)
    PIXEL_DATA <= {5'b0,6'b1,5'b1};
    else if(pixel_index == 5303)
    PIXEL_DATA <= {5'b0,6'b1,5'b1};
    else if(pixel_index == 1240)
    PIXEL_DATA <= {5'b0,6'b1,5'b10};
    else if(pixel_index == 2554)
    PIXEL_DATA <= {5'b10010,6'b10010,5'b0};
    else if(pixel_index == 2192)
    PIXEL_DATA <= {5'b10010,6'b10010,5'b10010};
    else if(pixel_index == 2458)
    PIXEL_DATA <= {5'b10010,6'b10010,5'b10010};
    else if(pixel_index == 61)
    PIXEL_DATA <= {5'b100,6'b10010,5'b11110};
    else if(pixel_index == 5010)
    PIXEL_DATA <= {5'b100,6'b10010,5'b11110};
    else if(pixel_index == 2843)
    PIXEL_DATA <= {5'b100,6'b100,5'b0};
    else if(pixel_index == 315)
    PIXEL_DATA <= {5'b101,6'b10101,5'b100010};
    else if(pixel_index == 752)
    PIXEL_DATA <= {5'b101,6'b10101,5'b100010};
    else if(pixel_index == 3939)
    PIXEL_DATA <= {5'b101,6'b10110,5'b100011};
    else if(pixel_index == 1352)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1101};
    else if(pixel_index == 1459)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1101};
    else if(pixel_index == 4712)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1101};
    else if(pixel_index == 6091)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1101};
    else if(pixel_index == 526)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1110};
    else if(pixel_index == 2014)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2593)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2689)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2785)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2881)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2977)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3073)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3169)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3265)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3361)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3457)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 4429)
    PIXEL_DATA <= {5'b10,6'b1010,5'b10001};
    else if(pixel_index == 5205)
    PIXEL_DATA <= {5'b10,6'b1010,5'b10001};
    else if(pixel_index == 557)
    PIXEL_DATA <= {5'b10,6'b1011,5'b10010};
    else if(pixel_index == 2650)
    PIXEL_DATA <= {5'b10,6'b10,5'b0};
    else if(pixel_index == 2191)
    PIXEL_DATA <= {5'b10,6'b10,5'b10};
    else if(pixel_index >= 139 && pixel_index <= 152)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 229 && pixel_index <= 253)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 320 && pixel_index <= 355)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 414 && pixel_index <= 428)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 443 && pixel_index <= 452)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 505 && pixel_index <= 519)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 544 && pixel_index <= 553)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 600 && pixel_index <= 611)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 644 && pixel_index <= 651)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 693 && pixel_index <= 703)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 744 && pixel_index <= 749)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 788 && pixel_index <= 796)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 843 && pixel_index <= 846)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 883 && pixel_index <= 890)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 940 && pixel_index <= 944)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 977 && pixel_index <= 983)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1040 && pixel_index <= 1041)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1071 && pixel_index <= 1077)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1138 && pixel_index <= 1139)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1165 && pixel_index <= 1172)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1235 && pixel_index <= 1236)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1260 && pixel_index <= 1266)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1332 && pixel_index <= 1334)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1356 && pixel_index <= 1361)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1429 && pixel_index <= 1431)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1450 && pixel_index <= 1455)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1527 && pixel_index <= 1528)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1546 && pixel_index <= 1550)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1624 && pixel_index <= 1625)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1641 && pixel_index <= 1645)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1721 && pixel_index <= 1722)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1736 && pixel_index <= 1740)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1818 && pixel_index <= 1819)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1831 && pixel_index <= 1835)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 1915)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1927 && pixel_index <= 1931)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2011 && pixel_index <= 2012)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2022 && pixel_index <= 2027)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2108)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2118 && pixel_index <= 2122)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2158 && pixel_index <= 2167)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2205)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2213 && pixel_index <= 2217)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2254)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2263)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2309 && pixel_index <= 2313)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2350)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2359)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2404 && pixel_index <= 2408)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2446)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2455)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2500 && pixel_index <= 2504)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2542)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2551)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2596 && pixel_index <= 2599)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2638)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2647)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2691 && pixel_index <= 2695)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2734)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2743)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2787 && pixel_index <= 2791)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2830)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2839)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2883 && pixel_index <= 2886)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2926)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2935)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2979 && pixel_index <= 2982)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3022)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3031)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 3075 && pixel_index <= 3078)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3118)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3127)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 3171 && pixel_index <= 3174)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3214)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3223)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 3267 && pixel_index <= 3270)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3310)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3319)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 3363 && pixel_index <= 3366)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3406)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3415)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 3459 && pixel_index <= 3462)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3502)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3511)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 3556 && pixel_index <= 3558)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3598)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3607)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 3652 && pixel_index <= 3655)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3694)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3703)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 3748 && pixel_index <= 3751)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3790)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3799)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 3845 && pixel_index <= 3847)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3886)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3895)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 3941 && pixel_index <= 3943)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3982)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3991)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 4038 && pixel_index <= 4040)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4078)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4087)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 4134 && pixel_index <= 4136)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4174)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4183)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 4231 && pixel_index <= 4233)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4270)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4279)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 4328 && pixel_index <= 4329)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4366)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4375)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 4425 && pixel_index <= 4427)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4462)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4471)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4521)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4558)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 4567 && pixel_index <= 4587)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4654)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4683)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4750)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4779)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4846)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4875)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4942)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4971)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5038)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5067)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5134)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5163)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5230)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5259)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 5326 && pixel_index <= 5355)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3554)
    PIXEL_DATA <= {5'b11,6'b10000,5'b11010};
    else if(pixel_index == 3650)
    PIXEL_DATA <= {5'b11,6'b10000,5'b11010};
    else if(pixel_index == 3746)
    PIXEL_DATA <= {5'b11,6'b10000,5'b11010};
    else if(pixel_index == 987)
    PIXEL_DATA <= {5'b11,6'b1100,5'b10011};
    else if(pixel_index == 501)
    PIXEL_DATA <= {5'b11,6'b1101,5'b10100};
    else if(pixel_index == 5589)
    PIXEL_DATA <= {5'b11,6'b1101,5'b10100};
    else if(pixel_index == 221)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 502)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 556)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 617)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 1718)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 4325)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 5885)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index >= 2746 && pixel_index <= 2747)
    PIXEL_DATA <= {5'b11,6'b11,5'b0};
    else if(pixel_index == 1270)
    PIXEL_DATA <= {5'b1,6'b100,5'b110};
    else if(pixel_index == 5995)
    PIXEL_DATA <= {5'b1,6'b100,5'b111};
    else if(pixel_index == 5794)
    PIXEL_DATA <= {5'b1,6'b101,5'b1000};
    else if(pixel_index == 1434)
    PIXEL_DATA <= {5'b1,6'b101,5'b1001};
    else if(pixel_index == 2070)
    PIXEL_DATA <= {5'b1,6'b101,5'b1011};
    else if(pixel_index == 5795)
    PIXEL_DATA <= {5'b1,6'b10,5'b100};
    else if(pixel_index == 261)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 937)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 1649)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 1821)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 2494)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 2062)
    PIXEL_DATA <= {5'b1,6'b110,5'b1110};
    else if(pixel_index >= 2063 && pixel_index <= 2069)
    PIXEL_DATA <= {5'b1,6'b111,5'b1111};
    else if(pixel_index == 359)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 1175)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 1912)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 2207)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 2303)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 2210)
    PIXEL_DATA <= {5'b1,6'b11,5'b110};
    else if(pixel_index == 3842)
    PIXEL_DATA <= {5'b1,6'b11,5'b110};
    else
    PIXEL_DATA <= {5'b0,6'b0,5'b0};
    end
    
    else if (level == 2)
    begin
    if(pixel_index >= 37 && pixel_index <= 60)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 130 && pixel_index <= 138)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 153 && pixel_index <= 160)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 222 && pixel_index <= 228)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 254 && pixel_index <= 260)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 316 && pixel_index <= 319)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 356 && pixel_index <= 358)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 408 && pixel_index <= 413)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 429 && pixel_index <= 442)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 453 && pixel_index <= 458)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 503 && pixel_index <= 504)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 520 && pixel_index <= 525)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 537 && pixel_index <= 543)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 554 && pixel_index <= 555)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 596 && pixel_index <= 599)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 612 && pixel_index <= 616)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 638 && pixel_index <= 643)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 652 && pixel_index <= 654)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 691 && pixel_index <= 692)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 704 && pixel_index <= 707)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 740 && pixel_index <= 743)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 750 && pixel_index <= 751)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 785 && pixel_index <= 787)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 797 && pixel_index <= 799)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 838 && pixel_index <= 842)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 847 && pixel_index <= 849)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 879 && pixel_index <= 882)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 891 && pixel_index <= 893)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 938 && pixel_index <= 939)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 945 && pixel_index <= 947)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 974 && pixel_index <= 976)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 984 && pixel_index <= 986)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1036 && pixel_index <= 1039)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1042 && pixel_index <= 1044)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1068 && pixel_index <= 1070)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1078 && pixel_index <= 1080)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1135 && pixel_index <= 1137)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1140 && pixel_index <= 1142)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1163 && pixel_index <= 1164)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1173 && pixel_index <= 1174)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1232 && pixel_index <= 1234)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1237 && pixel_index <= 1239)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1258 && pixel_index <= 1259)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1267 && pixel_index <= 1269)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1330 && pixel_index <= 1331)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1335 && pixel_index <= 1336)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1353 && pixel_index <= 1355)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1362 && pixel_index <= 1363)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1427 && pixel_index <= 1428)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1432 && pixel_index <= 1433)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1449)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1456 && pixel_index <= 1458)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1525 && pixel_index <= 1526)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1529 && pixel_index <= 1530)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1544 && pixel_index <= 1545)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1551 && pixel_index <= 1553)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1622 && pixel_index <= 1623)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1626 && pixel_index <= 1627)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1639 && pixel_index <= 1640)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1646 && pixel_index <= 1648)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1719 && pixel_index <= 1720)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1723)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1734 && pixel_index <= 1735)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1741 && pixel_index <= 1743)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1816 && pixel_index <= 1817)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1820)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1830)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1836 && pixel_index <= 1838)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1913 && pixel_index <= 1914)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1916)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1925 && pixel_index <= 1926)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1932 && pixel_index <= 1934)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2009 && pixel_index <= 2010)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2013)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2021)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2028 && pixel_index <= 2029)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2106 && pixel_index <= 2107)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2109)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2116 && pixel_index <= 2117)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2123 && pixel_index <= 2124)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2203 && pixel_index <= 2204)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2206)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2212)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2218 && pixel_index <= 2219)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2300 && pixel_index <= 2302)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2307 && pixel_index <= 2308)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2314 && pixel_index <= 2315)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2396 && pixel_index <= 2398)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2403)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2409 && pixel_index <= 2410)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2493)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2499)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2505 && pixel_index <= 2506)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2594 && pixel_index <= 2595)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2600 && pixel_index <= 2601)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2690)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2696 && pixel_index <= 2697)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2786)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2792 && pixel_index <= 2793)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2882)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2887 && pixel_index <= 2888)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2978)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2983 && pixel_index <= 2984)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3074)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3079 && pixel_index <= 3080)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3170)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3175 && pixel_index <= 3176)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3266)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3271 && pixel_index <= 3272)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3362)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3367 && pixel_index <= 3368)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3458)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3463 && pixel_index <= 3464)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3555)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3559 && pixel_index <= 3560)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3651)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3656 && pixel_index <= 3657)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3747)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3752 && pixel_index <= 3753)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3843 && pixel_index <= 3844)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3848 && pixel_index <= 3849)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3940)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3944 && pixel_index <= 3945)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4036 && pixel_index <= 4037)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4041 && pixel_index <= 4042)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4132 && pixel_index <= 4133)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4137 && pixel_index <= 4138)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4229 && pixel_index <= 4230)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4234 && pixel_index <= 4235)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4326 && pixel_index <= 4327)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4330 && pixel_index <= 4332)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4422 && pixel_index <= 4424)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 4428)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4519 && pixel_index <= 4520)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4524 && pixel_index <= 4525)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4616 && pixel_index <= 4617)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4621 && pixel_index <= 4622)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4713 && pixel_index <= 4714)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4718 && pixel_index <= 4719)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4810 && pixel_index <= 4811)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 4815)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4907 && pixel_index <= 4908)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 4912)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5004 && pixel_index <= 5005)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 5009)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5102 && pixel_index <= 5103)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5106 && pixel_index <= 5107)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5199 && pixel_index <= 5201)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 5204)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5297 && pixel_index <= 5298)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5301 && pixel_index <= 5302)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5394 && pixel_index <= 5395)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 5399)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5492 && pixel_index <= 5493)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5496 && pixel_index <= 5498)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5590 && pixel_index <= 5595)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5688 && pixel_index <= 5695)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5787 && pixel_index <= 5793)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5886 && pixel_index <= 5894)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5986 && pixel_index <= 5994)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1035)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 1162)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 1839)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 2019)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 4035)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 4906)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 5108)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index >= 2255 && pixel_index <= 2262)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 2351 && pixel_index <= 2358)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 2447 && pixel_index <= 2454)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 2543 && pixel_index <= 2550)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 2639 && pixel_index <= 2646)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 2735 && pixel_index <= 2742)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 2831 && pixel_index <= 2838)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 2927 && pixel_index <= 2934)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index == 2982)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3023 && pixel_index <= 3030)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3077 && pixel_index <= 3078)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3119 && pixel_index <= 3126)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3172 && pixel_index <= 3174)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3215 && pixel_index <= 3222)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3267 && pixel_index <= 3270)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3311 && pixel_index <= 3318)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3363 && pixel_index <= 3366)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3407 && pixel_index <= 3414)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3459 && pixel_index <= 3462)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3503 && pixel_index <= 3510)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3556 && pixel_index <= 3558)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3599 && pixel_index <= 3606)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3652 && pixel_index <= 3655)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3695 && pixel_index <= 3702)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3748 && pixel_index <= 3751)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3791 && pixel_index <= 3798)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3845 && pixel_index <= 3847)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3887 && pixel_index <= 3894)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3941 && pixel_index <= 3943)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3983 && pixel_index <= 3990)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4038 && pixel_index <= 4040)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4079 && pixel_index <= 4086)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4134 && pixel_index <= 4136)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4175 && pixel_index <= 4182)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4231 && pixel_index <= 4233)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4271 && pixel_index <= 4278)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4328 && pixel_index <= 4329)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4367 && pixel_index <= 4374)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4425 && pixel_index <= 4427)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4463 && pixel_index <= 4470)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4521 && pixel_index <= 4523)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4559 && pixel_index <= 4566)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4618 && pixel_index <= 4620)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4655 && pixel_index <= 4682)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4715 && pixel_index <= 4717)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4751 && pixel_index <= 4778)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4812 && pixel_index <= 4814)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4847 && pixel_index <= 4874)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4909 && pixel_index <= 4911)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4943 && pixel_index <= 4970)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5006 && pixel_index <= 5008)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5039 && pixel_index <= 5066)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5104 && pixel_index <= 5105)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5135 && pixel_index <= 5162)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5202 && pixel_index <= 5203)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5231 && pixel_index <= 5258)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5299 && pixel_index <= 5300)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5396 && pixel_index <= 5398)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5494 && pixel_index <= 5495)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index == 2399)
    PIXEL_DATA <= {5'b0,6'b1,5'b1};
    else if(pixel_index == 5303)
    PIXEL_DATA <= {5'b0,6'b1,5'b1};
    else if(pixel_index == 1240)
    PIXEL_DATA <= {5'b0,6'b1,5'b10};
    else if(pixel_index == 2554)
    PIXEL_DATA <= {5'b10010,6'b10010,5'b0};
    else if(pixel_index == 2192)
    PIXEL_DATA <= {5'b10010,6'b10010,5'b10010};
    else if(pixel_index == 2458)
    PIXEL_DATA <= {5'b10010,6'b10010,5'b10010};
    else if(pixel_index == 61)
    PIXEL_DATA <= {5'b100,6'b10010,5'b11110};
    else if(pixel_index == 5010)
    PIXEL_DATA <= {5'b100,6'b10010,5'b11110};
    else if(pixel_index == 2843)
    PIXEL_DATA <= {5'b100,6'b100,5'b0};
    else if(pixel_index == 315)
    PIXEL_DATA <= {5'b101,6'b10101,5'b100010};
    else if(pixel_index == 752)
    PIXEL_DATA <= {5'b101,6'b10101,5'b100010};
    else if(pixel_index == 3939)
    PIXEL_DATA <= {5'b101,6'b10110,5'b100011};
    else if(pixel_index == 1352)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1101};
    else if(pixel_index == 1459)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1101};
    else if(pixel_index == 4712)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1101};
    else if(pixel_index == 6091)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1101};
    else if(pixel_index == 526)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1110};
    else if(pixel_index == 2014)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2593)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2689)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2785)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2881)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2977)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3073)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3169)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3265)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3361)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3457)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 4429)
    PIXEL_DATA <= {5'b10,6'b1010,5'b10001};
    else if(pixel_index == 5205)
    PIXEL_DATA <= {5'b10,6'b1010,5'b10001};
    else if(pixel_index == 557)
    PIXEL_DATA <= {5'b10,6'b1011,5'b10010};
    else if(pixel_index == 2650)
    PIXEL_DATA <= {5'b10,6'b10,5'b0};
    else if(pixel_index == 2191)
    PIXEL_DATA <= {5'b10,6'b10,5'b10};
    else if(pixel_index >= 139 && pixel_index <= 152)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 229 && pixel_index <= 253)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 320 && pixel_index <= 355)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 414 && pixel_index <= 428)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 443 && pixel_index <= 452)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 505 && pixel_index <= 519)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 544 && pixel_index <= 553)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 600 && pixel_index <= 611)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 644 && pixel_index <= 651)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 693 && pixel_index <= 703)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 744 && pixel_index <= 749)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 788 && pixel_index <= 796)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 843 && pixel_index <= 846)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 883 && pixel_index <= 890)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 940 && pixel_index <= 944)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 977 && pixel_index <= 983)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1040 && pixel_index <= 1041)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1071 && pixel_index <= 1077)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1138 && pixel_index <= 1139)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1165 && pixel_index <= 1172)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1235 && pixel_index <= 1236)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1260 && pixel_index <= 1266)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1332 && pixel_index <= 1334)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1356 && pixel_index <= 1361)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1429 && pixel_index <= 1431)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1450 && pixel_index <= 1455)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1527 && pixel_index <= 1528)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1546 && pixel_index <= 1550)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1624 && pixel_index <= 1625)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1641 && pixel_index <= 1645)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1721 && pixel_index <= 1722)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1736 && pixel_index <= 1740)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1818 && pixel_index <= 1819)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1831 && pixel_index <= 1835)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 1915)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1927 && pixel_index <= 1931)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2011 && pixel_index <= 2012)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2022 && pixel_index <= 2027)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2108)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2118 && pixel_index <= 2122)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2158 && pixel_index <= 2167)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2205)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2213 && pixel_index <= 2217)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2254)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2263)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2309 && pixel_index <= 2313)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2350)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2359)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2404 && pixel_index <= 2408)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2446)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2455)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2500 && pixel_index <= 2504)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2542)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2551)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2596 && pixel_index <= 2599)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2638)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2647)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2691 && pixel_index <= 2695)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2734)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2743)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2787 && pixel_index <= 2791)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2830)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2839)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2883 && pixel_index <= 2886)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2926)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2935)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2979 && pixel_index <= 2981)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3022)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3031)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 3075 && pixel_index <= 3076)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3118)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3127)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3171)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3214)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3223)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3310)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3319)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3406)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3415)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3502)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3511)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3598)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3607)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3694)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3703)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3790)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3799)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3886)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3895)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3982)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3991)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4078)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4087)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4174)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4183)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4270)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4279)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4366)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4375)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4462)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4471)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4558)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 4567 && pixel_index <= 4587)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4654)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4683)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4750)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4779)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4846)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4875)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4942)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4971)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5038)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5067)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5134)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5163)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5230)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5259)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 5326 && pixel_index <= 5355)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3554)
    PIXEL_DATA <= {5'b11,6'b10000,5'b11010};
    else if(pixel_index == 3650)
    PIXEL_DATA <= {5'b11,6'b10000,5'b11010};
    else if(pixel_index == 3746)
    PIXEL_DATA <= {5'b11,6'b10000,5'b11010};
    else if(pixel_index == 987)
    PIXEL_DATA <= {5'b11,6'b1100,5'b10011};
    else if(pixel_index == 501)
    PIXEL_DATA <= {5'b11,6'b1101,5'b10100};
    else if(pixel_index == 5589)
    PIXEL_DATA <= {5'b11,6'b1101,5'b10100};
    else if(pixel_index == 221)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 502)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 556)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 617)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 1718)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 4325)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 5885)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index >= 2746 && pixel_index <= 2747)
    PIXEL_DATA <= {5'b11,6'b11,5'b0};
    else if(pixel_index == 1270)
    PIXEL_DATA <= {5'b1,6'b100,5'b110};
    else if(pixel_index == 5995)
    PIXEL_DATA <= {5'b1,6'b100,5'b111};
    else if(pixel_index == 5794)
    PIXEL_DATA <= {5'b1,6'b101,5'b1000};
    else if(pixel_index == 1434)
    PIXEL_DATA <= {5'b1,6'b101,5'b1001};
    else if(pixel_index == 2070)
    PIXEL_DATA <= {5'b1,6'b101,5'b1011};
    else if(pixel_index == 5795)
    PIXEL_DATA <= {5'b1,6'b10,5'b100};
    else if(pixel_index == 261)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 937)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 1649)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 1821)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 2494)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 2062)
    PIXEL_DATA <= {5'b1,6'b110,5'b1110};
    else if(pixel_index >= 2063 && pixel_index <= 2069)
    PIXEL_DATA <= {5'b1,6'b111,5'b1111};
    else if(pixel_index == 359)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 1175)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 1912)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 2207)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 2303)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 2210)
    PIXEL_DATA <= {5'b1,6'b11,5'b110};
    else if(pixel_index == 3842)
    PIXEL_DATA <= {5'b1,6'b11,5'b110};
    else
    PIXEL_DATA <= {5'b0,6'b0,5'b0};
    end
    else if (level == 3)
    begin
    
   if(pixel_index >= 37 && pixel_index <= 60)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 130 && pixel_index <= 138)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 153 && pixel_index <= 160)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 222 && pixel_index <= 228)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 254 && pixel_index <= 260)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 316 && pixel_index <= 319)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 356 && pixel_index <= 358)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 408 && pixel_index <= 413)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 429 && pixel_index <= 442)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 453 && pixel_index <= 458)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 503 && pixel_index <= 504)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 520 && pixel_index <= 525)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 537 && pixel_index <= 543)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 554 && pixel_index <= 555)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 596 && pixel_index <= 599)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 612 && pixel_index <= 616)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 638 && pixel_index <= 643)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 652 && pixel_index <= 654)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 691 && pixel_index <= 692)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 704 && pixel_index <= 707)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 740 && pixel_index <= 743)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 750 && pixel_index <= 751)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 785 && pixel_index <= 787)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 797 && pixel_index <= 799)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 838 && pixel_index <= 842)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 847 && pixel_index <= 849)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 879 && pixel_index <= 882)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 891 && pixel_index <= 893)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 938 && pixel_index <= 939)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 945 && pixel_index <= 947)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 974 && pixel_index <= 976)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 984 && pixel_index <= 986)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1036 && pixel_index <= 1039)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1042 && pixel_index <= 1044)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1068 && pixel_index <= 1070)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1078 && pixel_index <= 1080)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1135 && pixel_index <= 1137)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1140 && pixel_index <= 1142)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1163 && pixel_index <= 1164)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1173 && pixel_index <= 1174)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1232 && pixel_index <= 1234)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1237 && pixel_index <= 1239)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1258 && pixel_index <= 1259)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1267 && pixel_index <= 1269)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1330 && pixel_index <= 1331)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1335 && pixel_index <= 1336)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1353 && pixel_index <= 1355)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1362 && pixel_index <= 1363)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1427 && pixel_index <= 1428)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1432 && pixel_index <= 1433)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1449)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1456 && pixel_index <= 1458)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1525 && pixel_index <= 1526)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1529 && pixel_index <= 1530)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1544 && pixel_index <= 1545)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1551 && pixel_index <= 1553)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1622 && pixel_index <= 1623)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1626 && pixel_index <= 1627)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1639 && pixel_index <= 1640)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1646 && pixel_index <= 1648)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1719 && pixel_index <= 1720)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1723)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1734 && pixel_index <= 1735)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1741 && pixel_index <= 1743)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1816 && pixel_index <= 1817)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1820)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1830)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1836 && pixel_index <= 1838)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1913 && pixel_index <= 1914)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1916)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1925 && pixel_index <= 1926)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1932 && pixel_index <= 1934)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2009 && pixel_index <= 2010)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2013)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2021)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2028 && pixel_index <= 2029)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2106 && pixel_index <= 2107)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2109)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2116 && pixel_index <= 2117)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2123 && pixel_index <= 2124)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2203 && pixel_index <= 2204)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2206)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2212)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2218 && pixel_index <= 2219)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2300 && pixel_index <= 2302)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2307 && pixel_index <= 2308)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2314 && pixel_index <= 2315)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2396 && pixel_index <= 2398)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2403)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2409 && pixel_index <= 2410)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2493)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2499)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2505 && pixel_index <= 2506)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2594 && pixel_index <= 2595)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2600 && pixel_index <= 2601)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2690)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2696 && pixel_index <= 2697)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2786)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2792 && pixel_index <= 2793)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2882)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2887 && pixel_index <= 2888)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2978)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2983 && pixel_index <= 2984)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3074)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3079 && pixel_index <= 3080)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3170)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3175 && pixel_index <= 3176)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3266)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3271 && pixel_index <= 3272)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3362)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3367 && pixel_index <= 3368)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3458)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3463 && pixel_index <= 3464)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3555)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3559 && pixel_index <= 3560)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3651)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3656 && pixel_index <= 3657)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3747)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3752 && pixel_index <= 3753)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3843 && pixel_index <= 3844)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3848 && pixel_index <= 3849)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3940)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3944 && pixel_index <= 3945)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4036 && pixel_index <= 4037)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4041 && pixel_index <= 4042)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4132 && pixel_index <= 4133)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4137 && pixel_index <= 4138)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4229 && pixel_index <= 4230)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4234 && pixel_index <= 4235)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4326 && pixel_index <= 4327)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4330 && pixel_index <= 4332)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4422 && pixel_index <= 4424)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 4428)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4519 && pixel_index <= 4520)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4524 && pixel_index <= 4525)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4616 && pixel_index <= 4617)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4621 && pixel_index <= 4622)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4713 && pixel_index <= 4714)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4718 && pixel_index <= 4719)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4810 && pixel_index <= 4811)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 4815)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4907 && pixel_index <= 4908)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 4912)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5004 && pixel_index <= 5005)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 5009)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5102 && pixel_index <= 5103)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5106 && pixel_index <= 5107)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5199 && pixel_index <= 5201)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 5204)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5297 && pixel_index <= 5298)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5301 && pixel_index <= 5302)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5394 && pixel_index <= 5395)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 5399)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5492 && pixel_index <= 5493)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5496 && pixel_index <= 5498)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5590 && pixel_index <= 5595)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5688 && pixel_index <= 5695)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5787 && pixel_index <= 5793)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5886 && pixel_index <= 5894)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5986 && pixel_index <= 5994)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1035)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 1162)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 1839)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 2019)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 4035)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 4906)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 5108)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 2982)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3077 && pixel_index <= 3078)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3172 && pixel_index <= 3174)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3267 && pixel_index <= 3270)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3363 && pixel_index <= 3366)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3459 && pixel_index <= 3462)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3556 && pixel_index <= 3558)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3652 && pixel_index <= 3655)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3748 && pixel_index <= 3751)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3845 && pixel_index <= 3847)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3941 && pixel_index <= 3943)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4038 && pixel_index <= 4040)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4134 && pixel_index <= 4136)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4231 && pixel_index <= 4233)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4328 && pixel_index <= 4329)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4425 && pixel_index <= 4427)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4521 && pixel_index <= 4523)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4618 && pixel_index <= 4620)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4715 && pixel_index <= 4717)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4812 && pixel_index <= 4814)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4909 && pixel_index <= 4911)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5006 && pixel_index <= 5008)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5104 && pixel_index <= 5105)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5202 && pixel_index <= 5203)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5299 && pixel_index <= 5300)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5396 && pixel_index <= 5398)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5494 && pixel_index <= 5495)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index == 2399)
    PIXEL_DATA <= {5'b0,6'b1,5'b1};
    else if(pixel_index == 5303)
    PIXEL_DATA <= {5'b0,6'b1,5'b1};
    else if(pixel_index == 1240)
    PIXEL_DATA <= {5'b0,6'b1,5'b10};
    else if(pixel_index == 61)
    PIXEL_DATA <= {5'b100,6'b10010,5'b11110};
    else if(pixel_index == 5010)
    PIXEL_DATA <= {5'b100,6'b10010,5'b11110};
    else if(pixel_index == 315)
    PIXEL_DATA <= {5'b101,6'b10101,5'b100010};
    else if(pixel_index == 752)
    PIXEL_DATA <= {5'b101,6'b10101,5'b100010};
    else if(pixel_index == 3939)
    PIXEL_DATA <= {5'b101,6'b10110,5'b100011};
    else if(pixel_index == 1352)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1101};
    else if(pixel_index == 1459)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1101};
    else if(pixel_index == 4712)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1101};
    else if(pixel_index == 6091)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1101};
    else if(pixel_index == 526)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1110};
    else if(pixel_index == 2014)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2593)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2689)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2785)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2881)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2977)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3073)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3169)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3265)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3361)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3457)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 4429)
    PIXEL_DATA <= {5'b10,6'b1010,5'b10001};
    else if(pixel_index == 5205)
    PIXEL_DATA <= {5'b10,6'b1010,5'b10001};
    else if(pixel_index == 557)
    PIXEL_DATA <= {5'b10,6'b1011,5'b10010};
    else if(pixel_index >= 981 && pixel_index <= 983)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1071 && pixel_index <= 1072)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1075 && pixel_index <= 1077)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1165 && pixel_index <= 1172)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1260 && pixel_index <= 1266)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1356 && pixel_index <= 1361)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1450 && pixel_index <= 1455)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1546 && pixel_index <= 1550)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1641 && pixel_index <= 1645)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1736 && pixel_index <= 1740)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1831 && pixel_index <= 1835)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1927 && pixel_index <= 1931)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2022 && pixel_index <= 2027)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2118 && pixel_index <= 2122)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2213 && pixel_index <= 2217)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2255 && pixel_index <= 2263)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2279 && pixel_index <= 2287)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2309 && pixel_index <= 2313)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2351 && pixel_index <= 2360)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2374 && pixel_index <= 2383)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2404 && pixel_index <= 2408)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2447 && pixel_index <= 2457)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2469 && pixel_index <= 2479)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2500 && pixel_index <= 2504)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2543 && pixel_index <= 2554)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2565 && pixel_index <= 2575)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2596 && pixel_index <= 2599)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2639 && pixel_index <= 2651)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2660 && pixel_index <= 2671)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2691 && pixel_index <= 2695)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2735 && pixel_index <= 2748)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2755 && pixel_index <= 2767)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2787 && pixel_index <= 2791)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2831 && pixel_index <= 2844)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2850 && pixel_index <= 2863)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2883 && pixel_index <= 2886)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2927 && pixel_index <= 2941)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2945 && pixel_index <= 2959)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2979 && pixel_index <= 2981)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3023 && pixel_index <= 3038)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3040 && pixel_index <= 3055)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3075 && pixel_index <= 3076)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3119 && pixel_index <= 3151)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index == 3171)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3215 && pixel_index <= 3247)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3311 && pixel_index <= 3343)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3407 && pixel_index <= 3439)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3503 && pixel_index <= 3510)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3512 && pixel_index <= 3525)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3527 && pixel_index <= 3535)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3599 && pixel_index <= 3606)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3608 && pixel_index <= 3620)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3623 && pixel_index <= 3631)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3695 && pixel_index <= 3702)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3705 && pixel_index <= 3716)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3719 && pixel_index <= 3727)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3791 && pixel_index <= 3798)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3802 && pixel_index <= 3811)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3815 && pixel_index <= 3823)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3887 && pixel_index <= 3894)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3899 && pixel_index <= 3907)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3911 && pixel_index <= 3919)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3983 && pixel_index <= 3990)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3995 && pixel_index <= 4002)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4007 && pixel_index <= 4015)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4079 && pixel_index <= 4086)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4092 && pixel_index <= 4097)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4103 && pixel_index <= 4111)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4175 && pixel_index <= 4182)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4189 && pixel_index <= 4193)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4199 && pixel_index <= 4207)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4271 && pixel_index <= 4278)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4286 && pixel_index <= 4288)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4295 && pixel_index <= 4303)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4367 && pixel_index <= 4374)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index == 4383)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4391 && pixel_index <= 4399)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4463 && pixel_index <= 4470)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4487 && pixel_index <= 4495)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4559 && pixel_index <= 4566)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4583 && pixel_index <= 4591)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4655 && pixel_index <= 4662)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4679 && pixel_index <= 4687)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4751 && pixel_index <= 4758)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4775 && pixel_index <= 4783)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4847 && pixel_index <= 4854)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4871 && pixel_index <= 4879)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4943 && pixel_index <= 4950)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4967 && pixel_index <= 4975)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 5039 && pixel_index <= 5046)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 5063 && pixel_index <= 5071)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 5135 && pixel_index <= 5142)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 5159 && pixel_index <= 5167)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 5231 && pixel_index <= 5238)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 5255 && pixel_index <= 5263)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index == 980)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b111011};
    else if(pixel_index == 1074)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b111011};
    else if(pixel_index >= 139 && pixel_index <= 152)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 229 && pixel_index <= 253)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 320 && pixel_index <= 355)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 414 && pixel_index <= 428)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 443 && pixel_index <= 452)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 505 && pixel_index <= 519)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 544 && pixel_index <= 553)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 600 && pixel_index <= 611)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 644 && pixel_index <= 651)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 693 && pixel_index <= 703)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 744 && pixel_index <= 749)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 788 && pixel_index <= 796)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 843 && pixel_index <= 846)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 883 && pixel_index <= 890)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 940 && pixel_index <= 944)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 977 && pixel_index <= 979)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1040 && pixel_index <= 1041)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 1073)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1138 && pixel_index <= 1139)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1235 && pixel_index <= 1236)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1332 && pixel_index <= 1334)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1429 && pixel_index <= 1431)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1527 && pixel_index <= 1528)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1624 && pixel_index <= 1625)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1721 && pixel_index <= 1722)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1818 && pixel_index <= 1819)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 1915)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2011 && pixel_index <= 2012)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2108)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2158 && pixel_index <= 2168)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2182 && pixel_index <= 2192)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2205)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2254)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2264)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2278)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2288)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2350)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2361)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2373)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2384)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2446)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2458)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2468)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2480)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2542)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2555)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2564)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2576)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2638)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2652)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2659)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2672)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2734)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2749)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2754)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2768)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2830)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2845)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2849)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2864)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2926)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2942)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2944)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2960)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3022)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3039)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3056)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3118)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3152)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3214)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3248)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3310)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3344)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3406)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3440)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3502)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3511)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3526)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3536)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3598)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3607)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 3621 && pixel_index <= 3622)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3632)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3694)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 3703 && pixel_index <= 3704)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 3717 && pixel_index <= 3718)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3728)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3790)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3799)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3801)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3812)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3814)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3824)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3886)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3895)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3898)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3908)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3910)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3920)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3982)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3991)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3994)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4003)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4006)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4016)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4078)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4087)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4091)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4098)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4102)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4112)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4174)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4183)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4188)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4194)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4198)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4208)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4270)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4279)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4285)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4289)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4294)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4304)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4366)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4375)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4382)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4384)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4390)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4400)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4462)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4471)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4479)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4486)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4496)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4558)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4567)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4582)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4592)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4654)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4663)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4678)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4688)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4750)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4759)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4774)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4784)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4846)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4855)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4870)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4880)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4942)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4951)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4966)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4976)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5038)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5047)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5062)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5072)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5134)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5143)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5158)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5168)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5230)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5239)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5254)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5264)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 5326 && pixel_index <= 5335)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 5350 && pixel_index <= 5360)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3554)
    PIXEL_DATA <= {5'b11,6'b10000,5'b11010};
    else if(pixel_index == 3650)
    PIXEL_DATA <= {5'b11,6'b10000,5'b11010};
    else if(pixel_index == 3746)
    PIXEL_DATA <= {5'b11,6'b10000,5'b11010};
    else if(pixel_index == 987)
    PIXEL_DATA <= {5'b11,6'b1100,5'b10011};
    else if(pixel_index == 501)
    PIXEL_DATA <= {5'b11,6'b1101,5'b10100};
    else if(pixel_index == 5589)
    PIXEL_DATA <= {5'b11,6'b1101,5'b10100};
    else if(pixel_index == 221)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 502)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 556)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 617)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 1718)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 4325)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 5885)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 1270)
    PIXEL_DATA <= {5'b1,6'b100,5'b110};
    else if(pixel_index == 5995)
    PIXEL_DATA <= {5'b1,6'b100,5'b111};
    else if(pixel_index == 5794)
    PIXEL_DATA <= {5'b1,6'b101,5'b1000};
    else if(pixel_index == 1434)
    PIXEL_DATA <= {5'b1,6'b101,5'b1001};
    else if(pixel_index == 2070)
    PIXEL_DATA <= {5'b1,6'b101,5'b1011};
    else if(pixel_index == 5795)
    PIXEL_DATA <= {5'b1,6'b10,5'b100};
    else if(pixel_index == 261)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 937)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 1649)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 1821)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 2494)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 2062)
    PIXEL_DATA <= {5'b1,6'b110,5'b1110};
    else if(pixel_index >= 2063 && pixel_index <= 2069)
    PIXEL_DATA <= {5'b1,6'b111,5'b1111};
    else if(pixel_index == 359)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 1175)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 1912)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 2207)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 2303)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 2210)
    PIXEL_DATA <= {5'b1,6'b11,5'b110};
    else if(pixel_index == 3842)
    PIXEL_DATA <= {5'b1,6'b11,5'b110};
    else
    PIXEL_DATA <= {5'b0,6'b0,5'b0};
    end
    
    else if(level == 4)
    begin
    if(pixel_index >= 37 && pixel_index <= 60)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 130 && pixel_index <= 138)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 153 && pixel_index <= 160)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 222 && pixel_index <= 228)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 254 && pixel_index <= 260)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 316 && pixel_index <= 319)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 356 && pixel_index <= 358)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 408 && pixel_index <= 413)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 429 && pixel_index <= 442)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 453 && pixel_index <= 458)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 503 && pixel_index <= 504)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 520 && pixel_index <= 525)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 537 && pixel_index <= 543)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 554 && pixel_index <= 555)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 596 && pixel_index <= 599)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 612 && pixel_index <= 616)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 638 && pixel_index <= 643)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 652 && pixel_index <= 654)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 691 && pixel_index <= 692)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 704 && pixel_index <= 707)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 740 && pixel_index <= 743)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 750 && pixel_index <= 751)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 785 && pixel_index <= 787)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 797 && pixel_index <= 799)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 838 && pixel_index <= 842)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 847 && pixel_index <= 849)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 879 && pixel_index <= 882)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 891 && pixel_index <= 893)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 938 && pixel_index <= 939)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 945 && pixel_index <= 947)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 974 && pixel_index <= 976)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 984 && pixel_index <= 986)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1036 && pixel_index <= 1039)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1042 && pixel_index <= 1044)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1068 && pixel_index <= 1070)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1078 && pixel_index <= 1080)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1135 && pixel_index <= 1137)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1140 && pixel_index <= 1142)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1163 && pixel_index <= 1164)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1173 && pixel_index <= 1174)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1232 && pixel_index <= 1234)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1237 && pixel_index <= 1239)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1258 && pixel_index <= 1259)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1267 && pixel_index <= 1269)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1330 && pixel_index <= 1331)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1335 && pixel_index <= 1336)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1353 && pixel_index <= 1355)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1362 && pixel_index <= 1363)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1427 && pixel_index <= 1428)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1432 && pixel_index <= 1433)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1449)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1456 && pixel_index <= 1458)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1525 && pixel_index <= 1526)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1529 && pixel_index <= 1530)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1544 && pixel_index <= 1545)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1551 && pixel_index <= 1553)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1622 && pixel_index <= 1623)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1626 && pixel_index <= 1627)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1639 && pixel_index <= 1640)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1646 && pixel_index <= 1648)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1719 && pixel_index <= 1720)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1723)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1734 && pixel_index <= 1735)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1741 && pixel_index <= 1743)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1816 && pixel_index <= 1817)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1820)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1830)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1836 && pixel_index <= 1838)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1913 && pixel_index <= 1914)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1916)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1925 && pixel_index <= 1926)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1932 && pixel_index <= 1934)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2009 && pixel_index <= 2010)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2013)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2021)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2028 && pixel_index <= 2029)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2106 && pixel_index <= 2107)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2109)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2116 && pixel_index <= 2117)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2123 && pixel_index <= 2124)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2203 && pixel_index <= 2204)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2206)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2212)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2218 && pixel_index <= 2219)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2300 && pixel_index <= 2302)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2307 && pixel_index <= 2308)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2314 && pixel_index <= 2315)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2396 && pixel_index <= 2398)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2403)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2409 && pixel_index <= 2410)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2493)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2499)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2505 && pixel_index <= 2506)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2594 && pixel_index <= 2595)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2600 && pixel_index <= 2601)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2690)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2696 && pixel_index <= 2697)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2786)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2792 && pixel_index <= 2793)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2882)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2887 && pixel_index <= 2888)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2978)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2983 && pixel_index <= 2984)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3074)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3079 && pixel_index <= 3080)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3170)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3175 && pixel_index <= 3176)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3266)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3271 && pixel_index <= 3272)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3362)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3367 && pixel_index <= 3368)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3458)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3463 && pixel_index <= 3464)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3555)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3559 && pixel_index <= 3560)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3651)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3656 && pixel_index <= 3657)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3747)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3752 && pixel_index <= 3753)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3843 && pixel_index <= 3844)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3848 && pixel_index <= 3849)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3940)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3944 && pixel_index <= 3945)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4036 && pixel_index <= 4037)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4041 && pixel_index <= 4042)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4132 && pixel_index <= 4133)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4137 && pixel_index <= 4138)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4229 && pixel_index <= 4230)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4234 && pixel_index <= 4235)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4326 && pixel_index <= 4327)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4330 && pixel_index <= 4332)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4422 && pixel_index <= 4424)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 4428)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4519 && pixel_index <= 4520)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4524 && pixel_index <= 4525)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4616 && pixel_index <= 4617)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4621 && pixel_index <= 4622)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4713 && pixel_index <= 4714)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4718 && pixel_index <= 4719)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4810 && pixel_index <= 4811)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 4815)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4907 && pixel_index <= 4908)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 4912)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5004 && pixel_index <= 5005)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 5009)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5102 && pixel_index <= 5103)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5106 && pixel_index <= 5107)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5199 && pixel_index <= 5201)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 5204)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5297 && pixel_index <= 5298)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5301 && pixel_index <= 5302)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5394 && pixel_index <= 5395)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 5399)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5492 && pixel_index <= 5493)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5496 && pixel_index <= 5498)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5590 && pixel_index <= 5595)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5688 && pixel_index <= 5695)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5787 && pixel_index <= 5793)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5886 && pixel_index <= 5894)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5986 && pixel_index <= 5994)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1035)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 1162)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 1839)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 2019)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 4035)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 4906)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 5108)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 2982)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3077 && pixel_index <= 3078)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3172 && pixel_index <= 3174)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3267 && pixel_index <= 3270)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3363 && pixel_index <= 3366)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3459 && pixel_index <= 3462)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3556 && pixel_index <= 3558)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3652 && pixel_index <= 3655)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3748 && pixel_index <= 3751)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3845 && pixel_index <= 3847)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3941 && pixel_index <= 3943)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4038 && pixel_index <= 4040)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4134 && pixel_index <= 4136)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4231 && pixel_index <= 4233)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4328 && pixel_index <= 4329)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4425 && pixel_index <= 4427)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4521 && pixel_index <= 4523)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4618 && pixel_index <= 4620)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4715 && pixel_index <= 4717)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4812 && pixel_index <= 4814)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4909 && pixel_index <= 4911)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5006 && pixel_index <= 5008)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5104 && pixel_index <= 5105)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5202 && pixel_index <= 5203)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5299 && pixel_index <= 5300)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5396 && pixel_index <= 5398)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5494 && pixel_index <= 5495)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index == 2399)
    PIXEL_DATA <= {5'b0,6'b1,5'b1};
    else if(pixel_index == 5303)
    PIXEL_DATA <= {5'b0,6'b1,5'b1};
    else if(pixel_index == 1240)
    PIXEL_DATA <= {5'b0,6'b1,5'b10};
    else if(pixel_index == 61)
    PIXEL_DATA <= {5'b100,6'b10010,5'b11110};
    else if(pixel_index == 5010)
    PIXEL_DATA <= {5'b100,6'b10010,5'b11110};
    else if(pixel_index == 315)
    PIXEL_DATA <= {5'b101,6'b10101,5'b100010};
    else if(pixel_index == 752)
    PIXEL_DATA <= {5'b101,6'b10101,5'b100010};
    else if(pixel_index == 3939)
    PIXEL_DATA <= {5'b101,6'b10110,5'b100011};
    else if(pixel_index == 1352)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1101};
    else if(pixel_index == 1459)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1101};
    else if(pixel_index == 4712)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1101};
    else if(pixel_index == 6091)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1101};
    else if(pixel_index == 526)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1110};
    else if(pixel_index == 2014)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2593)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2689)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2785)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2881)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2977)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3073)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3169)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3265)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3361)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3457)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 4429)
    PIXEL_DATA <= {5'b10,6'b1010,5'b10001};
    else if(pixel_index == 5205)
    PIXEL_DATA <= {5'b10,6'b1010,5'b10001};
    else if(pixel_index == 557)
    PIXEL_DATA <= {5'b10,6'b1011,5'b10010};
    else if(pixel_index >= 139 && pixel_index <= 150)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 229 && pixel_index <= 247)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 320 && pixel_index <= 346)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 414 && pixel_index <= 428)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 443 && pixel_index <= 445)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 505 && pixel_index <= 519)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 600 && pixel_index <= 611)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 693 && pixel_index <= 703)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 788 && pixel_index <= 796)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 883 && pixel_index <= 890)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 977 && pixel_index <= 983)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1071 && pixel_index <= 1077)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1165 && pixel_index <= 1172)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1260 && pixel_index <= 1266)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1356 && pixel_index <= 1361)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1450 && pixel_index <= 1455)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1546 && pixel_index <= 1550)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1641 && pixel_index <= 1645)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1736 && pixel_index <= 1740)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1831 && pixel_index <= 1835)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1927 && pixel_index <= 1931)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2022 && pixel_index <= 2027)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2118 && pixel_index <= 2122)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2213 && pixel_index <= 2217)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2255 && pixel_index <= 2263)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2279 && pixel_index <= 2287)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2309 && pixel_index <= 2313)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2351 && pixel_index <= 2360)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2374 && pixel_index <= 2383)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2404 && pixel_index <= 2408)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2447 && pixel_index <= 2457)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2469 && pixel_index <= 2479)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2500 && pixel_index <= 2504)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2543 && pixel_index <= 2554)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2565 && pixel_index <= 2575)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2596 && pixel_index <= 2599)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2639 && pixel_index <= 2651)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2660 && pixel_index <= 2671)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2691 && pixel_index <= 2695)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2735 && pixel_index <= 2748)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2755 && pixel_index <= 2767)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2787 && pixel_index <= 2791)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2831 && pixel_index <= 2844)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2850 && pixel_index <= 2863)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2883 && pixel_index <= 2886)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2927 && pixel_index <= 2941)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2945 && pixel_index <= 2959)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2979 && pixel_index <= 2981)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3023 && pixel_index <= 3038)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3040 && pixel_index <= 3055)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3075 && pixel_index <= 3076)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3119 && pixel_index <= 3151)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index == 3171)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3215 && pixel_index <= 3247)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3311 && pixel_index <= 3343)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3407 && pixel_index <= 3439)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3503 && pixel_index <= 3510)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3512 && pixel_index <= 3525)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3527 && pixel_index <= 3535)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3599 && pixel_index <= 3606)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3608 && pixel_index <= 3620)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3623 && pixel_index <= 3631)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3695 && pixel_index <= 3702)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3705 && pixel_index <= 3716)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3719 && pixel_index <= 3727)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3791 && pixel_index <= 3798)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3802 && pixel_index <= 3811)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3815 && pixel_index <= 3823)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3887 && pixel_index <= 3894)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3899 && pixel_index <= 3907)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3911 && pixel_index <= 3919)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3983 && pixel_index <= 3990)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3995 && pixel_index <= 4002)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4007 && pixel_index <= 4015)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4079 && pixel_index <= 4086)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4092 && pixel_index <= 4097)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4103 && pixel_index <= 4111)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4175 && pixel_index <= 4182)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4189 && pixel_index <= 4193)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4199 && pixel_index <= 4207)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4271 && pixel_index <= 4278)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4286 && pixel_index <= 4288)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4295 && pixel_index <= 4303)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4367 && pixel_index <= 4374)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index == 4383)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4391 && pixel_index <= 4399)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4463 && pixel_index <= 4470)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4487 && pixel_index <= 4495)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4559 && pixel_index <= 4566)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4583 && pixel_index <= 4591)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4655 && pixel_index <= 4662)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4679 && pixel_index <= 4687)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4751 && pixel_index <= 4758)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4775 && pixel_index <= 4783)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4847 && pixel_index <= 4854)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4871 && pixel_index <= 4879)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4943 && pixel_index <= 4950)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 4967 && pixel_index <= 4975)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 5039 && pixel_index <= 5046)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 5063 && pixel_index <= 5071)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 5135 && pixel_index <= 5142)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 5159 && pixel_index <= 5167)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 5231 && pixel_index <= 5238)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 5255 && pixel_index <= 5263)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 151 && pixel_index <= 152)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 248 && pixel_index <= 253)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 347 && pixel_index <= 355)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 446 && pixel_index <= 452)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 544 && pixel_index <= 553)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 644 && pixel_index <= 651)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 744 && pixel_index <= 749)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 843 && pixel_index <= 846)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 940 && pixel_index <= 944)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1040 && pixel_index <= 1041)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1138 && pixel_index <= 1139)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1235 && pixel_index <= 1236)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1332 && pixel_index <= 1334)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1429 && pixel_index <= 1431)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1527 && pixel_index <= 1528)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1624 && pixel_index <= 1625)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1721 && pixel_index <= 1722)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 1818 && pixel_index <= 1819)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 1915)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2011 && pixel_index <= 2012)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2108)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2158 && pixel_index <= 2168)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2182 && pixel_index <= 2192)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2205)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2254)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2264)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2278)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2288)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2350)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2361)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2373)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2384)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2446)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2458)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2468)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2480)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2542)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2555)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2564)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2576)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2638)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2652)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2659)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2672)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2734)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2749)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2754)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2768)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2830)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2845)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2849)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2864)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2926)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2942)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2944)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2960)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3022)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3039)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3056)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3118)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3152)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3214)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3248)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3310)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3344)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3406)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3440)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3502)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3511)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3526)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3536)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3598)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3607)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 3621 && pixel_index <= 3622)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3632)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3694)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 3703 && pixel_index <= 3704)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 3717 && pixel_index <= 3718)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3728)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3790)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3799)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3801)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3812)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3814)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3824)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3886)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3895)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3898)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3908)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3910)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3920)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3982)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3991)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3994)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4003)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4006)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4016)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4078)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4087)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4091)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4098)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4102)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4112)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4174)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4183)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4188)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4194)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4198)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4208)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4270)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4279)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4285)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4289)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4294)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4304)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4366)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4375)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4382)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4384)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4390)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4400)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4462)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4471)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4479)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4486)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4496)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4558)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4567)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4582)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4592)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4654)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4663)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4678)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4688)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4750)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4759)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4774)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4784)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4846)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4855)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4870)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4880)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4942)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4951)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4966)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4976)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5038)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5047)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5062)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5072)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5134)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5143)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5158)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5168)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5230)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5239)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5254)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5264)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 5326 && pixel_index <= 5335)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 5350 && pixel_index <= 5360)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3554)
    PIXEL_DATA <= {5'b11,6'b10000,5'b11010};
    else if(pixel_index == 3650)
    PIXEL_DATA <= {5'b11,6'b10000,5'b11010};
    else if(pixel_index == 3746)
    PIXEL_DATA <= {5'b11,6'b10000,5'b11010};
    else if(pixel_index == 987)
    PIXEL_DATA <= {5'b11,6'b1100,5'b10011};
    else if(pixel_index == 501)
    PIXEL_DATA <= {5'b11,6'b1101,5'b10100};
    else if(pixel_index == 5589)
    PIXEL_DATA <= {5'b11,6'b1101,5'b10100};
    else if(pixel_index == 221)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 502)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 556)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 617)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 1718)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 4325)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 5885)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 1270)
    PIXEL_DATA <= {5'b1,6'b100,5'b110};
    else if(pixel_index == 5995)
    PIXEL_DATA <= {5'b1,6'b100,5'b111};
    else if(pixel_index == 5794)
    PIXEL_DATA <= {5'b1,6'b101,5'b1000};
    else if(pixel_index == 1434)
    PIXEL_DATA <= {5'b1,6'b101,5'b1001};
    else if(pixel_index == 2070)
    PIXEL_DATA <= {5'b1,6'b101,5'b1011};
    else if(pixel_index == 5795)
    PIXEL_DATA <= {5'b1,6'b10,5'b100};
    else if(pixel_index == 261)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 937)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 1649)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 1821)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 2494)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 2062)
    PIXEL_DATA <= {5'b1,6'b110,5'b1110};
    else if(pixel_index >= 2063 && pixel_index <= 2069)
    PIXEL_DATA <= {5'b1,6'b111,5'b1111};
    else if(pixel_index == 359)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 1175)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 1912)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 2207)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 2303)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 2210)
    PIXEL_DATA <= {5'b1,6'b11,5'b110};
    else if(pixel_index == 3842)
    PIXEL_DATA <= {5'b1,6'b11,5'b110};
    else
    PIXEL_DATA <= {5'b0,6'b0,5'b0};
    end
    
    else if (level == 5)
    begin
    if(pixel_index >= 37 && pixel_index <= 60)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 130 && pixel_index <= 138)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 153 && pixel_index <= 160)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 222 && pixel_index <= 228)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 254 && pixel_index <= 260)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 316 && pixel_index <= 319)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 356 && pixel_index <= 358)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 408 && pixel_index <= 413)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 429 && pixel_index <= 442)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 453 && pixel_index <= 458)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 503 && pixel_index <= 504)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 520 && pixel_index <= 525)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 537 && pixel_index <= 543)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 554 && pixel_index <= 555)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 596 && pixel_index <= 599)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 612 && pixel_index <= 616)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 638 && pixel_index <= 643)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 652 && pixel_index <= 654)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 691 && pixel_index <= 692)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 704 && pixel_index <= 707)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 740 && pixel_index <= 743)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 750 && pixel_index <= 751)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 785 && pixel_index <= 787)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 797 && pixel_index <= 799)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 838 && pixel_index <= 842)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 847 && pixel_index <= 849)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 879 && pixel_index <= 882)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 891 && pixel_index <= 893)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 938 && pixel_index <= 939)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 945 && pixel_index <= 947)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 974 && pixel_index <= 976)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 984 && pixel_index <= 986)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1036 && pixel_index <= 1039)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1042 && pixel_index <= 1044)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1068 && pixel_index <= 1070)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1078 && pixel_index <= 1080)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1135 && pixel_index <= 1137)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1140 && pixel_index <= 1142)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1163 && pixel_index <= 1164)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1173 && pixel_index <= 1174)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1232 && pixel_index <= 1234)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1237 && pixel_index <= 1239)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1258 && pixel_index <= 1259)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1267 && pixel_index <= 1269)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1330 && pixel_index <= 1331)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1335 && pixel_index <= 1336)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1353 && pixel_index <= 1355)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1362 && pixel_index <= 1363)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1427 && pixel_index <= 1428)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1432 && pixel_index <= 1433)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1449)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1456 && pixel_index <= 1458)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1525 && pixel_index <= 1526)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1529 && pixel_index <= 1530)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1544 && pixel_index <= 1545)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1551 && pixel_index <= 1553)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1622 && pixel_index <= 1623)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1626 && pixel_index <= 1627)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1639 && pixel_index <= 1640)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1646 && pixel_index <= 1648)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1719 && pixel_index <= 1720)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1723)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1734 && pixel_index <= 1735)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1741 && pixel_index <= 1743)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1816 && pixel_index <= 1817)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1820)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1830)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1836 && pixel_index <= 1838)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1913 && pixel_index <= 1914)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1916)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1925 && pixel_index <= 1926)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 1932 && pixel_index <= 1934)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2009 && pixel_index <= 2010)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2013)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2021)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2028 && pixel_index <= 2029)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2106 && pixel_index <= 2107)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2109)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2116 && pixel_index <= 2117)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2123 && pixel_index <= 2124)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2203 && pixel_index <= 2204)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2206)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2212)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2218 && pixel_index <= 2219)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2300 && pixel_index <= 2302)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2307 && pixel_index <= 2308)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2314 && pixel_index <= 2315)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2396 && pixel_index <= 2398)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2403)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2409 && pixel_index <= 2410)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2493)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2499)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2505 && pixel_index <= 2506)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2594 && pixel_index <= 2595)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2600 && pixel_index <= 2601)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2690)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2696 && pixel_index <= 2697)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2786)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2792 && pixel_index <= 2793)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2882)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2887 && pixel_index <= 2888)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 2978)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 2983 && pixel_index <= 2984)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3074)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3079 && pixel_index <= 3080)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3170)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3175 && pixel_index <= 3176)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3266)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3271 && pixel_index <= 3272)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3362)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3367 && pixel_index <= 3368)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3458)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3463 && pixel_index <= 3464)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3555)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3559 && pixel_index <= 3560)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3651)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3656 && pixel_index <= 3657)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3747)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3752 && pixel_index <= 3753)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3843 && pixel_index <= 3844)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3848 && pixel_index <= 3849)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 3940)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 3944 && pixel_index <= 3945)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4036 && pixel_index <= 4037)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4041 && pixel_index <= 4042)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4132 && pixel_index <= 4133)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4137 && pixel_index <= 4138)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4229 && pixel_index <= 4230)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4234 && pixel_index <= 4235)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4326 && pixel_index <= 4327)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4330 && pixel_index <= 4332)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4422 && pixel_index <= 4424)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 4428)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4519 && pixel_index <= 4520)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4524 && pixel_index <= 4525)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4616 && pixel_index <= 4617)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4621 && pixel_index <= 4622)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4713 && pixel_index <= 4714)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4718 && pixel_index <= 4719)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4810 && pixel_index <= 4811)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 4815)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 4907 && pixel_index <= 4908)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 4912)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5004 && pixel_index <= 5005)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 5009)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5102 && pixel_index <= 5103)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5106 && pixel_index <= 5107)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5199 && pixel_index <= 5201)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 5204)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5297 && pixel_index <= 5298)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5301 && pixel_index <= 5302)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5394 && pixel_index <= 5395)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 5399)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5492 && pixel_index <= 5493)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5496 && pixel_index <= 5498)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5590 && pixel_index <= 5595)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5688 && pixel_index <= 5695)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5787 && pixel_index <= 5793)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5886 && pixel_index <= 5894)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index >= 5986 && pixel_index <= 5994)
    PIXEL_DATA <= {5'b0,6'b0,5'b11111111};
    else if(pixel_index == 1035)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 1162)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 1839)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 2019)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 4035)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 4906)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 5108)
    PIXEL_DATA <= {5'b0,6'b10,5'b11};
    else if(pixel_index == 2982)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3077 && pixel_index <= 3078)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3172 && pixel_index <= 3174)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3267 && pixel_index <= 3270)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3363 && pixel_index <= 3366)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3459 && pixel_index <= 3462)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3556 && pixel_index <= 3558)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3652 && pixel_index <= 3655)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3748 && pixel_index <= 3751)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3845 && pixel_index <= 3847)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 3941 && pixel_index <= 3943)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4038 && pixel_index <= 4040)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4134 && pixel_index <= 4136)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4231 && pixel_index <= 4233)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4328 && pixel_index <= 4329)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4425 && pixel_index <= 4427)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4521 && pixel_index <= 4523)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4618 && pixel_index <= 4620)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4715 && pixel_index <= 4717)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4812 && pixel_index <= 4814)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 4909 && pixel_index <= 4911)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5006 && pixel_index <= 5008)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5104 && pixel_index <= 5105)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5202 && pixel_index <= 5203)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5299 && pixel_index <= 5300)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5396 && pixel_index <= 5398)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index >= 5494 && pixel_index <= 5495)
    PIXEL_DATA <= {5'b0,6'b11111111,5'b0};
    else if(pixel_index == 2399)
    PIXEL_DATA <= {5'b0,6'b1,5'b1};
    else if(pixel_index == 5303)
    PIXEL_DATA <= {5'b0,6'b1,5'b1};
    else if(pixel_index == 1240)
    PIXEL_DATA <= {5'b0,6'b1,5'b10};
    else if(pixel_index == 61)
    PIXEL_DATA <= {5'b100,6'b10010,5'b11110};
    else if(pixel_index == 5010)
    PIXEL_DATA <= {5'b100,6'b10010,5'b11110};
    else if(pixel_index == 315)
    PIXEL_DATA <= {5'b101,6'b10101,5'b100010};
    else if(pixel_index == 752)
    PIXEL_DATA <= {5'b101,6'b10101,5'b100010};
    else if(pixel_index == 3939)
    PIXEL_DATA <= {5'b101,6'b10110,5'b100011};
    else if(pixel_index == 1352)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1101};
    else if(pixel_index == 1459)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1101};
    else if(pixel_index == 4712)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1101};
    else if(pixel_index == 6091)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1101};
    else if(pixel_index == 526)
    PIXEL_DATA <= {5'b10,6'b1000,5'b1110};
    else if(pixel_index == 2014)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2593)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2689)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2785)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2881)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 2977)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3073)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3169)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3265)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3361)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 3457)
    PIXEL_DATA <= {5'b10,6'b1001,5'b1111};
    else if(pixel_index == 4429)
    PIXEL_DATA <= {5'b10,6'b1010,5'b10001};
    else if(pixel_index == 5205)
    PIXEL_DATA <= {5'b10,6'b1010,5'b10001};
    else if(pixel_index == 557)
    PIXEL_DATA <= {5'b10,6'b1011,5'b10010};
    else if(pixel_index >= 151 && pixel_index <= 152)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 248 && pixel_index <= 253)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 347 && pixel_index <= 355)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 446 && pixel_index <= 452)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 544 && pixel_index <= 553)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 644 && pixel_index <= 651)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 744 && pixel_index <= 749)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 843 && pixel_index <= 846)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 940 && pixel_index <= 944)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 1040 && pixel_index <= 1041)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 1138 && pixel_index <= 1139)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 1235 && pixel_index <= 1236)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 1332 && pixel_index <= 1334)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 1429 && pixel_index <= 1431)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 1527 && pixel_index <= 1528)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 1624 && pixel_index <= 1625)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 1721 && pixel_index <= 1722)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 1818 && pixel_index <= 1819)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index == 1915)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 2011 && pixel_index <= 2012)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index == 2108)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index == 2205)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 2255 && pixel_index <= 2262)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 2271 && pixel_index <= 2278)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 2351 && pixel_index <= 2358)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 2367 && pixel_index <= 2374)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 2447 && pixel_index <= 2454)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 2463 && pixel_index <= 2470)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 2543 && pixel_index <= 2550)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 2559 && pixel_index <= 2566)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 2639 && pixel_index <= 2646)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 2655 && pixel_index <= 2662)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 2735 && pixel_index <= 2742)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 2751 && pixel_index <= 2758)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 2831 && pixel_index <= 2838)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 2847 && pixel_index <= 2854)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 2927 && pixel_index <= 2934)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 2943 && pixel_index <= 2950)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 3023 && pixel_index <= 3030)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 3039 && pixel_index <= 3046)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 3119 && pixel_index <= 3126)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 3135 && pixel_index <= 3142)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 3215 && pixel_index <= 3238)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 3311 && pixel_index <= 3334)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 3407 && pixel_index <= 3430)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 3503 && pixel_index <= 3526)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 3599 && pixel_index <= 3622)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 3695 && pixel_index <= 3718)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 3791 && pixel_index <= 3814)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 3887 && pixel_index <= 3894)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 3903 && pixel_index <= 3910)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 3983 && pixel_index <= 3990)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 3999 && pixel_index <= 4006)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 4079 && pixel_index <= 4086)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 4095 && pixel_index <= 4102)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 4175 && pixel_index <= 4182)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 4191 && pixel_index <= 4198)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 4271 && pixel_index <= 4278)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 4287 && pixel_index <= 4294)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 4367 && pixel_index <= 4374)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 4383 && pixel_index <= 4390)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 4463 && pixel_index <= 4470)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 4479 && pixel_index <= 4486)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 4559 && pixel_index <= 4566)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 4575 && pixel_index <= 4582)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 4655 && pixel_index <= 4662)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 4671 && pixel_index <= 4678)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 4751 && pixel_index <= 4758)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 4767 && pixel_index <= 4774)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 4847 && pixel_index <= 4854)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 4863 && pixel_index <= 4870)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 4943 && pixel_index <= 4950)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 4959 && pixel_index <= 4966)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 5039 && pixel_index <= 5046)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 5055 && pixel_index <= 5062)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 5135 && pixel_index <= 5142)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 5151 && pixel_index <= 5158)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 5231 && pixel_index <= 5238)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 5247 && pixel_index <= 5254)
    PIXEL_DATA <= {5'b11111111,6'b0,5'b0};
    else if(pixel_index >= 139 && pixel_index <= 150)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 229 && pixel_index <= 247)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 320 && pixel_index <= 346)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 414 && pixel_index <= 428)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 443 && pixel_index <= 445)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 505 && pixel_index <= 519)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 600 && pixel_index <= 611)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 693 && pixel_index <= 703)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 788 && pixel_index <= 796)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 883 && pixel_index <= 890)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 977 && pixel_index <= 983)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1071 && pixel_index <= 1077)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1165 && pixel_index <= 1172)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1260 && pixel_index <= 1266)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1356 && pixel_index <= 1361)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1450 && pixel_index <= 1455)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1546 && pixel_index <= 1550)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1641 && pixel_index <= 1645)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1736 && pixel_index <= 1740)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1831 && pixel_index <= 1835)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 1927 && pixel_index <= 1931)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2022 && pixel_index <= 2027)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2118 && pixel_index <= 2122)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2213 && pixel_index <= 2217)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2309 && pixel_index <= 2313)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2404 && pixel_index <= 2408)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2500 && pixel_index <= 2504)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2596 && pixel_index <= 2599)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2691 && pixel_index <= 2695)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2787 && pixel_index <= 2791)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2883 && pixel_index <= 2886)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2979 && pixel_index <= 2981)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 3075 && pixel_index <= 3076)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index == 3171)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b0};
    else if(pixel_index >= 2158 && pixel_index <= 2167)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 2174 && pixel_index <= 2183)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2254)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2263)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2270)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2279)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2350)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2359)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2366)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2375)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2446)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2455)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2462)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2471)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2542)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2551)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2558)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2567)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2638)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2647)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2654)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2663)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2734)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2743)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2750)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2759)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2830)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2839)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2846)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2855)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2926)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2935)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2942)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 2951)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3022)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3031)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3038)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3047)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3118)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 3127 && pixel_index <= 3134)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3143)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3214)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3239)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3310)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3335)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3406)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3431)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3502)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3527)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3598)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3623)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3694)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3719)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3790)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3815)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3886)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 3895 && pixel_index <= 3902)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3911)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3982)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3991)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3998)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4007)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4078)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4087)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4094)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4103)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4174)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4183)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4190)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4199)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4270)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4279)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4286)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4295)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4366)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4375)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4382)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4391)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4462)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4471)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4478)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4487)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4558)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4567)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4574)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4583)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4654)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4663)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4670)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4679)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4750)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4759)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4766)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4775)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4846)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4855)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4862)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4871)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4942)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4951)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4958)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 4967)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5038)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5047)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5054)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5063)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5134)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5143)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5150)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5159)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5230)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5239)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5246)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 5255)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 5326 && pixel_index <= 5335)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index >= 5342 && pixel_index <= 5351)
    PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
    else if(pixel_index == 3554)
    PIXEL_DATA <= {5'b11,6'b10000,5'b11010};
    else if(pixel_index == 3650)
    PIXEL_DATA <= {5'b11,6'b10000,5'b11010};
    else if(pixel_index == 3746)
    PIXEL_DATA <= {5'b11,6'b10000,5'b11010};
    else if(pixel_index == 987)
    PIXEL_DATA <= {5'b11,6'b1100,5'b10011};
    else if(pixel_index == 501)
    PIXEL_DATA <= {5'b11,6'b1101,5'b10100};
    else if(pixel_index == 5589)
    PIXEL_DATA <= {5'b11,6'b1101,5'b10100};
    else if(pixel_index == 221)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 502)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 556)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 617)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 1718)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 4325)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 5885)
    PIXEL_DATA <= {5'b11,6'b1110,5'b10111};
    else if(pixel_index == 1270)
    PIXEL_DATA <= {5'b1,6'b100,5'b110};
    else if(pixel_index == 5995)
    PIXEL_DATA <= {5'b1,6'b100,5'b111};
    else if(pixel_index == 5794)
    PIXEL_DATA <= {5'b1,6'b101,5'b1000};
    else if(pixel_index == 1434)
    PIXEL_DATA <= {5'b1,6'b101,5'b1001};
    else if(pixel_index == 2070)
    PIXEL_DATA <= {5'b1,6'b101,5'b1011};
    else if(pixel_index == 5795)
    PIXEL_DATA <= {5'b1,6'b10,5'b100};
    else if(pixel_index == 261)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 937)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 1649)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 1821)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 2494)
    PIXEL_DATA <= {5'b1,6'b110,5'b1010};
    else if(pixel_index == 2062)
    PIXEL_DATA <= {5'b1,6'b110,5'b1110};
    else if(pixel_index >= 2063 && pixel_index <= 2069)
    PIXEL_DATA <= {5'b1,6'b111,5'b1111};
    else if(pixel_index == 359)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 1175)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 1912)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 2207)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 2303)
    PIXEL_DATA <= {5'b1,6'b11,5'b101};
    else if(pixel_index == 2210)
    PIXEL_DATA <= {5'b1,6'b11,5'b110};
    else if(pixel_index == 3842)
    PIXEL_DATA <= {5'b1,6'b11,5'b110};
    else 
    PIXEL_DATA <= {5'b0,6'b0,5'b0};
    end
 //sw3 end 
 end
//always end   
end
endmodule
