`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 20:39:32
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
    reg A;
    reg B;
    wire [2:0] out;
    
    initial begin
        clk = 0;
        forever #2 clk = ~clk;
    end
    
    fsm2 FSM(
        .clk(clk),
        .reset(reset),
        .A(A),
        .B(B),
        .out(out)
    );
    
    initial begin
        A = 0;
        B = 0;
        reset = 1;
        @(negedge clk);
        reset = 0;
        @(negedge clk);
        A = 1;
        B = 1;
        #100 $stop();
    end
endmodule
