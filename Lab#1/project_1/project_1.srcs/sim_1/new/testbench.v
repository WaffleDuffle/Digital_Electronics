`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2024 19:43:28
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
reg a, b;
reg[7:0] c;  //8 bit signal
reg e;

initial begin
    $monitor("time = %2d, a = %b, b=%b", $time, a, b);
    a = 0;
    b = 0;   //initialize a, b, c
    c = 0;
 #1 a = 1;   //after 1 clock cycle a is equal to 1 and c is equal to 100
    c = 100; 
 #1 b = 1;   //after 1 clock cycle b is qeual to 1
 #1 a = 0;   //after 1 clock cycle a and b are equal to 0 and c is equal to 255
    b = 0;
    c = 255;
 #2 $stop;   //after 2 clock cycles stop
end

initial begin
    e = 0;   //initialize e
    forever begin
      #1 e = ~e;  //after 1 clock cycle e is negated
    end
end    
endmodule
