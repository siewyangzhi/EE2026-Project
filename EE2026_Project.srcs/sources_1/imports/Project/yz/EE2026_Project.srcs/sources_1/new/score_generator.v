`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2021 21:08:47
// Design Name: 
// Module Name: score_generator
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


module score_generator(
input debounced_clock,
//input half_second_clock,
input activation_switch,
input reset,
input D_Down,
input D_Up,
input D_Centre,
input High_End_Position,
input Mid_End_Position,
input Low_End_Position,
output reg [4:0] score = 0
);

reg [13:0] counter = 0;


always @(posedge debounced_clock ,posedge reset)
begin

if (activation_switch == 1 && reset == 1)
begin
    counter = 0;
end

else if(activation_switch == 1 && reset == 0)
begin
        if (D_Down == 1 && High_End_Position == 1)
        begin
        counter = (counter == 9999)?counter: counter + 5;
        end
        
        if (D_Up == 1 && Low_End_Position == 1)
        begin
        counter = (counter == 9999)?counter: counter + 5;
        end
        
        if(D_Centre == 1 && Mid_End_Position == 1)
        begin
        counter = (counter == 9999)?counter: counter + 5;
        end
        
    end

end



always @(posedge debounced_clock)
begin    
   if(counter <= 666)
    begin 
     score = 0;
    end
    
    else if(counter <= 1332)
    begin
     score = 1;
    end
    
    else if(counter <= 1998)
    begin
     score = 2;
    end
    
    else if(counter <= 2664)
    begin
     score = 3;
    end
    
    else if(counter <= 3330)
    begin
     score = 4;
    end
    
    else if(counter <= 3996)
    begin
     score = 5;
    end
    
    else if(counter <= 4662)
    begin
     score = 6;
    end
    
    else if(counter <= 5328)
    begin
     score = 7;
    end
    
    else if(counter <= 5994)
    begin
     score = 8;
    end
    
    else if(counter <= 6660)
    begin
     score = 9;
    end
    
    else if(counter <= 7326)
    begin
     score = 10;
    end    
    
    else if(counter <= 7992)
    begin
     score = 11;
    end     
    
    else if(counter <= 8658)
    begin
     score = 12;
    end   
    
    else if(counter <= 9324)
    begin
     score = 13;
    end   
    
    else if(counter < 9999)
    begin
     score = 14;
    end  
    
    else 
    begin
     score = 15;
    end  

    
end    

endmodule
