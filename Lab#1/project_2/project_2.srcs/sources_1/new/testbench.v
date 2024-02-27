`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2024 19:57:37
// Design Name: 
// Module Name: testbench
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


module testbench();

reg x;
reg[5:0] y;
reg z;
reg w;

initial begin
    x = 0;
 #2 x = 1;
    forever begin
      #2 x = ~x;
    end  
end

initial begin
    y = 0;
 #2 y = 1;
    forever begin
      #2 y = y + 1;
    end  
end

initial begin
    z = 0;
 #2 z = 1;
 #8 z = ~z;  
end

initial begin
    w = 0;
 #2 w = 1;
 #1 w = 0;
 #5 w = 1;
 #2 w = 0;
end

initial begin
 #30 $stop();
end
endmodule
