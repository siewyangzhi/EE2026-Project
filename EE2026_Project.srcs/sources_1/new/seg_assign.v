`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2021 02:27:19
// Design Name: 
// Module Name: seg_assign
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


module seg_assign(
    input [3:0]presses,
    input fast,
    input speedo,
    input taptap,
    input tunemode,
    input switchmode,
    input show_raw,
    input sonar,
    input [7:0] Zmode, Zleft, Zright,Z0,Z1, Z2, Z3,Z0X,Z1X,Z2X,Z3X,Z0X1,Z1X1,Z2X1,Z3X1,Z0X2,Z1X2,Z2X2,Z3X2,Z0X3,Z1X3,Z2X3,Z3X3,MSB,LSB,sig, leastsig,
    input [7:0]tap_Z0,tap_Z1,tap_Z2,tap_Z3,speed_Z0,speed_Z1,speed_Z2,speed_Z3,
    output reg [7:0] Zmode_final = 8'b11111111,
    output reg [7:0] Zleft_final = 8'b11111111,
    output reg [7:0] Zright_final = 8'b11111111,
    output reg [7:0] Z_padded =8'b11111111
    );

    always @ (posedge fast)
    if (tunemode == 0 && show_raw == 1 && sonar == 0)//to display raw
    begin
        Z_padded = Z0; //AN0
        Zmode_final = Z1 ;
        Zleft_final =  Z2 ;
        Zright_final =   Z3 ;
    end
    else if (tunemode == 0 && show_raw == 0 && sonar == 0 && taptap == 0 && speedo == 0)// to display basic
    begin
        Zmode_final = (switchmode == 1) ? Zmode : 8'b11111111 ; 
        Zleft_final = (switchmode == 0) ? Zleft : 8'b11111111;
        Zright_final = (switchmode == 0) ? Zright : 8'b11111111;
        Z_padded = 8'b11111111;
    end
    else if (tunemode == 1 && show_raw == 0 && sonar == 0 && taptap == 0 && speedo == 0) // when tune moode come
    begin
        Z_padded = 8'b11111111;
        Zmode_final = 8'b11111111 ;
        Zleft_final =  MSB ;
        Zright_final =   LSB ;
    end
    else if (tunemode == 0 && show_raw == 0 && sonar == 0 && taptap == 1 && speedo == 0) // taptap revenge mode
    begin
        Z_padded = tap_Z0; //AN0
        Zmode_final = tap_Z1 ;
        Zleft_final = tap_Z2 ;
        Zright_final = tap_Z3;
    end
    else if (tunemode == 0 && show_raw == 0 && sonar == 0 && taptap == 0 && speedo == 1)
    begin
        Z_padded = speed_Z0; //AN0
        Zmode_final = speed_Z1 ;
        Zleft_final = speed_Z2;
        Zright_final = speed_Z3;
    end
    else if (tunemode == 0 && show_raw == 0 && sonar == 1 && taptap == 0 && speedo == 0)//sonar mode
    begin
        if (presses == 1)
        begin
            Z_padded = Z0X; //AN0
                Zmode_final = Z1X ;
                Zleft_final =  Z2X ;
                Zright_final =   Z3X;
        end
        if (presses == 2)
        begin
            Z_padded = Z0X1; //AN0
                Zmode_final = Z1X1 ;
                Zleft_final =  Z2X1 ;
                Zright_final =   Z3X1;
        end
        if (presses == 3)
        begin
            Z_padded = Z0X2; //AN0
                Zmode_final = Z1X2 ;
                Zleft_final =  Z2X2 ;
                Zright_final =   Z3X2;
        end
        if (presses == 4)
        begin
            Z_padded = Z0X3; //AN0
            Zmode_final = Z1X3 ;
            Zleft_final =  Z2X3 ;
            Zright_final =   Z3X3;
        end
        if (presses == 5)
        begin
            Z_padded = 8'b11111111; //AN0
            Zmode_final = 8'b11111111 ;
            Zleft_final =  sig ;
            Zright_final =  leastsig;
        
      
      
       end
        
  
    end
    
  
endmodule
