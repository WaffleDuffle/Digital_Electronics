`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 18:00:23
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
    
    reg reset;
    reg en;
    reg clk;
    reg [7:0] in;
    wire out;
    
    divi DUT(
        .reset(reset),
        .en(en),
        .clk(clk),
        .in(in),
        .out(out)
    );
    
    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end
    
    initial begin
        in = 24;
        reset = 1;
        en = 1;
        @(negedge clk);
        reset = 0;
        #300 $stop();
    end
    
endmodule
