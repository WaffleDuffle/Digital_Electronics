`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 20:05:26
// Design Name: 
// Module Name: Numarator_TB
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


module Numarator_TB(

    );
    parameter WIDTH = 5;
    reg clk;
    reg reset;
    wire [WIDTH-1:0] count;
    
    Numarator #(.WIDTH(WIDTH))
    DUT (
        .clk(clk),
        .reset(reset),
        .count(count)
    );
    
    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end
    
    initial begin
        reset = 0;
        #2 reset = 1;
        #400 $stop();
    end
endmodule
