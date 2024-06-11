`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2024 11:18:11
// Design Name: 
// Module Name: tb
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


module tb(

    );
    
    reg clk;
    reg reset;
    
    wire out;
    wire out_bit0;
    wire out_bit1;
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        @(negedge clk);
        reset = 1;
        @(negedge clk);
        reset = 0;
        #1000 $stop();
    end
    
    top DUT(
    .reset(reset),
    .clk(clk),
    .out(out),
    .out_bit0(out_bit0),
    .out_bit1(out_bit1));
endmodule
