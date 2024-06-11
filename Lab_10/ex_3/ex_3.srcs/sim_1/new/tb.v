`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2024 12:32:35
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
    wire out1;
    wire out2;
    wire out3;
    wire out4;
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        @(negedge clk);
        reset = 1;
        @(negedge clk);
        reset = 0;
        #10000 $stop();
    end
    
    top #(.LIMIT_PERIOD(100), .LIMIT_DUTY_CYCLE(25)) TOP(
    .reset(reset),
    .clk(clk),
    .out(out));
    
    top #(.LIMIT_PERIOD(100), .LIMIT_DUTY_CYCLE(50)) TOP1(
    .reset(reset),
    .clk(clk),
    .out(out1));
    
    top #(.LIMIT_PERIOD(100), .LIMIT_DUTY_CYCLE(75)) TOP2(
    .reset(reset),
    .clk(clk),
    .out(out2));
    
    top #(.LIMIT_PERIOD(100), .LIMIT_DUTY_CYCLE(99)) TOP3(
    .reset(reset),
    .clk(clk),
    .out(out3));
    
    top #(.LIMIT_PERIOD(100), .LIMIT_DUTY_CYCLE(100)) TOP4(
    .reset(reset),
    .clk(clk),
    .out(out4));
endmodule
