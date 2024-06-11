`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2024 10:46:10
// Design Name: 
// Module Name: TB
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


module TB(
    
    );
    
    reg clk;
    reg reset;
    reg in_50b;
    reg in_100b;
    wire give_choco;
    
    automat DUT(
    .clk(clk),
    .reset(reset),
    .in_50b(in_50b),
    .in_100b(in_100b),
    .give_choco(give_choco));
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        @(negedge clk);
            reset = 1;
        @(negedge clk);
            reset = 0;
        #10 in_50b = 0;
            in_100b = 1;
        #5  in_50b = 1;
            in_100b = 0;
        #10 in_50b = 0;
            in_100b = 0;
        #20 in_100b = 1;
        #20 in_50b = 1;
        #20 $stop();
    end
    
    
endmodule
