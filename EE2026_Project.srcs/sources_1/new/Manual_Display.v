`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2021 17:05:19
// Design Name: 
// Module Name: Manual_Display
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


module Manual_Display(
input CLK,
input Manual_Switch,
input [12:0]pixel_index,
output reg [15:0] PIXEL_DATA = 16'b0000000000000000
    );
    always @(posedge CLK)
    begin
        if(Manual_Switch == 1)
        begin
        if(pixel_index >= 97 && pixel_index <= 190)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 193)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 286)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 289)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 382)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 385)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 478)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 481)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 574)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 577)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 590 && pixel_index <= 592)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 595 && pixel_index <= 596)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 599)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 602)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 604)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 607)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 609 && pixel_index <= 611)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 617 && pixel_index <= 618)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 621)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 624)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 626 && pixel_index <= 628)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 633)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 637)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 639)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 642)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 645 && pixel_index <= 647)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 649 && pixel_index <= 651)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 654 && pixel_index <= 655)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 670)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 673)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 685)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 690)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 693)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 695)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 698)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 700 && pixel_index <= 701)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 703)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 705)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 708)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 712)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 715)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 717 && pixel_index <= 718)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 720)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 722)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 725)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 729 && pixel_index <= 730)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 732 && pixel_index <= 733)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 735)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 738)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 740)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 746)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 749)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 752)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 766)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 769)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 782 && pixel_index <= 783)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 786)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 789)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 791)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 794)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 796)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 798 && pixel_index <= 799)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 801)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 804)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 808 && pixel_index <= 811)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 813)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 815 && pixel_index <= 816)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 818)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 821)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 825)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 827)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 829)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 831)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 834)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 837 && pixel_index <= 838)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 842)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 845)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 862)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 865)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 880)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 882)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 885)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 887)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 890)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 892)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 895)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 897)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 900)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 904)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 907)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 909)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 912)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 914)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 917)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 921)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 925)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 927)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 930)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 935)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 938)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 941)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 944)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 958)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 961)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 973 && pixel_index <= 975)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 979 && pixel_index <= 980)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 984 && pixel_index <= 985)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 988)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 991)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 993 && pixel_index <= 995)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1000)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1003)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1005)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1008)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1010 && pixel_index <= 1012)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1017)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1021)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1024 && pixel_index <= 1025)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1028 && pixel_index <= 1030)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1033 && pixel_index <= 1035)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1038 && pixel_index <= 1039)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1054)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1057)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1150)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1153)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1246)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1249)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1342)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1345)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1438)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1441)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1534)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1537)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1630)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1633)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1726)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1729)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1822)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1825)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1918)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 1921)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2014)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2017)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2110)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2113)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2206)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2209)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2302)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2305)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2398)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2401)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2494)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2497)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2590)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2593)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2686)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2689)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2782)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2785)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2878)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2881)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2974)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 2977)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 3070)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 3073)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 3166)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 3169)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 3262)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 3265)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 3358)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 3361)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 3454)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 3457)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 3550)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 3553)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 3646)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 3649)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 3742)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 3745)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 3838)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 3841)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 3934)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 3937)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4030)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4033)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4126)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4129)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4222)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4225)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4318)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4321)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4414)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4417)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4510)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4513)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4606)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4609)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4702)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4705)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4798)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4801)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4894)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4897)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4990)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 4993)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 5086)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 5089)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 5182)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 5185)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 5278)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 5281)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 5374)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 5377)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 5470)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 5473)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 5566)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 5569)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 5662)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 5665)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 5758)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 5761)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 5854)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 5857)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index == 5950)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 5953 && pixel_index <= 6046)
        PIXEL_DATA <= {5'b11111111,6'b0,5'b11111111};
        else if(pixel_index >= 1446 && pixel_index <= 1448)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1450)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1454)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 1457 && pixel_index <= 1458)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1467)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1471)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 1474 && pixel_index <= 1475)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1478)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1481)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1483)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1486)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 1489 && pixel_index <= 1490)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1493)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1541)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1546)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1550)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1552)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1555)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1558)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 1563 && pixel_index <= 1564)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 1566 && pixel_index <= 1567)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1569)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1572)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 1574 && pixel_index <= 1575)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1577)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1579)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1582)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1584)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1587)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1589)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 1638 && pixel_index <= 1639)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1642)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1644)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1646)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1648)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1651)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1659)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1661)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1663)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 1665 && pixel_index <= 1668)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1670)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 1672 && pixel_index <= 1673)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1675)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1678)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 1680 && pixel_index <= 1683)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1685)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1736)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 1738 && pixel_index <= 1739)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 1741 && pixel_index <= 1742)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1744)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1747)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1750)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1755)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1759)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1761)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1764)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1766)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1769)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1771)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1774)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1776)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1779)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1781)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 1829 && pixel_index <= 1831)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1834)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1838)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 1841 && pixel_index <= 1842)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1851)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1855)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1857)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1860)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1862)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1865)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 1868 && pixel_index <= 1869)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1872)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 1875)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 1877 && pixel_index <= 1880)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2214 && pixel_index <= 2216)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2218)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2222)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2225)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2233 && pixel_index <= 2235)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2237)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2241)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2244 && pixel_index <= 2245)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2254 && pixel_index <= 2256)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2260 && pixel_index <= 2261)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2264 && pixel_index <= 2266)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2269 && pixel_index <= 2271)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2274 && pixel_index <= 2275)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2309)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2314)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2318)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2320 && pixel_index <= 2321)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2328)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2333)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2337)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2339)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2345)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2350)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2353)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2355)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2358)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2361)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2364)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2369)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2372)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2406 && pixel_index <= 2407)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2410)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2412)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2414)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2417)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2420 && pixel_index <= 2422)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2425 && pixel_index <= 2426)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2429)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2431)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2433)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2435 && pixel_index <= 2437)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2446 && pixel_index <= 2448)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2451 && pixel_index <= 2454)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2457)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2461 && pixel_index <= 2462)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2465)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2504)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2506 && pixel_index <= 2507)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2509 && pixel_index <= 2510)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2513)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2523)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2525 && pixel_index <= 2526)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2528 && pixel_index <= 2529)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2531)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2534)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2537)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2542)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2545)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2547)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2550)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2553)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2559)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2561)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2564)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2597 && pixel_index <= 2599)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2602)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2606)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2608 && pixel_index <= 2610)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2616 && pixel_index <= 2618)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2621)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2625)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2628 && pixel_index <= 2629)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2638 && pixel_index <= 2640)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2643)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2646)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2648 && pixel_index <= 2650)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2652 && pixel_index <= 2654)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2658 && pixel_index <= 2659)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2982 && pixel_index <= 2984)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2986)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 2990)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 2992 && pixel_index <= 2994)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3003 && pixel_index <= 3006)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3008 && pixel_index <= 3011)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3014 && pixel_index <= 3015)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3018 && pixel_index <= 3022)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3024)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3027)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3029 && pixel_index <= 3031)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3034 && pixel_index <= 3037)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3040 && pixel_index <= 3042)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3077)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3082)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3086)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3091)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3094)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3099)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3104)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3109)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3112)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3116)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3120)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3123)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3125)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3128)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3130)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3135)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3174 && pixel_index <= 3175)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3178)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3180)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3182)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3187)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3195 && pixel_index <= 3197)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3200 && pixel_index <= 3202)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3205 && pixel_index <= 3208)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3212)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3216)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3219)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3221 && pixel_index <= 3223)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3226 && pixel_index <= 3228)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3232 && pixel_index <= 3233)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3272)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3274 && pixel_index <= 3275)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3277 && pixel_index <= 3278)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3282)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3286)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3291)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3296)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3301)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3304)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3308)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3312)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3315)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3317)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3319)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3322)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3330)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3365 && pixel_index <= 3367)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3370)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3374)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3378)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3387)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3392 && pixel_index <= 3395)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3397)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3400)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3404)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3409 && pixel_index <= 3410)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3413)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3416)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3418 && pixel_index <= 3421)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3423 && pixel_index <= 3425)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3654 && pixel_index <= 3656)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3658)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3662)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3667)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3671)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3680 && pixel_index <= 3682)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3686 && pixel_index <= 3687)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3690)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3694)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3698 && pixel_index <= 3700)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3704 && pixel_index <= 3705)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3708 && pixel_index <= 3712)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3715 && pixel_index <= 3716)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3749)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3754)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3758)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3762 && pixel_index <= 3763)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3766 && pixel_index <= 3767)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3771)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3776)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3779)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3781)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3784)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3786)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3790)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3794)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3797)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3799)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3802)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3806)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3810)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3813)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3846 && pixel_index <= 3847)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3850)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3852)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3854)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3859)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3863)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3872 && pixel_index <= 3874)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3877 && pixel_index <= 3880)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3882)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3884)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3886)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3890)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3893)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3895 && pixel_index <= 3898)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3902)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3906 && pixel_index <= 3909)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3944)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3946 && pixel_index <= 3947)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3949 && pixel_index <= 3950)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3955)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3959)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3963)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3968)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3970)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3973)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3976)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3978 && pixel_index <= 3979)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 3981 && pixel_index <= 3982)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3986)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3989)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3991)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3994)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 3998)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4002)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4005)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4037 && pixel_index <= 4039)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4042)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4046)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4050 && pixel_index <= 4052)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4054 && pixel_index <= 4056)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4064)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4067)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4069)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4072)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4074)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4078)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4082 && pixel_index <= 4084)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4087)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4090)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4094)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4098)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4101)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4326 && pixel_index <= 4328)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4330)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4334)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4339)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4343 && pixel_index <= 4344)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4353 && pixel_index <= 4357)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4359)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4362)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4364)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4367)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4369 && pixel_index <= 4372)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4377 && pixel_index <= 4378)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4381 && pixel_index <= 4383)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4389)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4391)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4394)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4397 && pixel_index <= 4399)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4401 && pixel_index <= 4405)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4421)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4426)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4430)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4434 && pixel_index <= 4435)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4438)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4441)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4444)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4451)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4455)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4458)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4460 && pixel_index <= 4461)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4463)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4465)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4472)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4475)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4477)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4480)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4485)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4487)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4490)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4492)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4499)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4518 && pixel_index <= 4519)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4522)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4524)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4526)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4531)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4536)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4547)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4551)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4554)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4556)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4558 && pixel_index <= 4559)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4561 && pixel_index <= 4563)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4568 && pixel_index <= 4571)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4573)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4576)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4581)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4583)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4586)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4589 && pixel_index <= 4590)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4595)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4616)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4618 && pixel_index <= 4619)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4621 && pixel_index <= 4622)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4627)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4631)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4636)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4643)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4647)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4650)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4652)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4655)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4657)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4664)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4667)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4669)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4672)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4674)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4677)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4679)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4682)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4687)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4691)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4709 && pixel_index <= 4711)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4714)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4718)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4722 && pixel_index <= 4724)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4726 && pixel_index <= 4729)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4739)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4744 && pixel_index <= 4745)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4748)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4751)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4753 && pixel_index <= 4756)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4760)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4763)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4765 && pixel_index <= 4767)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4771 && pixel_index <= 4772)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4776 && pixel_index <= 4777)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4780 && pixel_index <= 4782)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 4787)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 4998 && pixel_index <= 5000)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5002)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5006)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5011)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5015 && pixel_index <= 5016)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5026 && pixel_index <= 5028)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5030 && pixel_index <= 5032)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5035 && pixel_index <= 5038)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5040 && pixel_index <= 5043)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5045 && pixel_index <= 5047)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5051 && pixel_index <= 5052)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5055)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5059)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5061 && pixel_index <= 5064)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5066 && pixel_index <= 5070)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5072 && pixel_index <= 5075)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5077 && pixel_index <= 5079)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5093)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5098)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5102)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5106 && pixel_index <= 5107)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5110)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5113)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5116)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5121)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5126)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5129)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5131)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5136)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5141)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5144)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5146)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5149)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5151 && pixel_index <= 5152)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5154 && pixel_index <= 5155)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5157)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5164)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5168)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5173)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5176)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5190 && pixel_index <= 5191)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5194)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5196)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5198)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5203)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5208)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5218 && pixel_index <= 5219)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5222 && pixel_index <= 5224)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5227 && pixel_index <= 5229)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5232 && pixel_index <= 5234)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5237)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5240)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5242)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5245)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5247)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5249)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5251)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5253 && pixel_index <= 5255)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5260)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5264 && pixel_index <= 5266)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5269 && pixel_index <= 5271)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5288)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5290 && pixel_index <= 5291)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5293 && pixel_index <= 5294)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5299)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5302)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5305)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5308)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5316)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5318)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5323)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5328)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5333)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5336)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5338)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5341)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5343)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5347)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5349)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5356)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5360)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5365)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5367)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5381 && pixel_index <= 5383)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5386)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5390)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5394 && pixel_index <= 5396)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5399 && pixel_index <= 5400)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5409 && pixel_index <= 5411)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5414)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5419 && pixel_index <= 5422)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5424 && pixel_index <= 5427)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5429 && pixel_index <= 5431)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5435 && pixel_index <= 5436)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5439)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5443)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5445 && pixel_index <= 5448)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5452)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index >= 5456 && pixel_index <= 5459)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5461)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else if(pixel_index == 5464)
        PIXEL_DATA <= {5'b11111111,6'b11111111,5'b11111111};
        else
        PIXEL_DATA <= {5'b0,6'b0,5'b0};
        end
    end
endmodule


