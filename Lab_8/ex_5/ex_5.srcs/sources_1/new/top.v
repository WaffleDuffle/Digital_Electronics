`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 13:22:15
// Design Name: 
// Module Name: top
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


module top(
    input reset,
    input clk,
    input we,
    input [7:0] data_in,
    output [7:0] data_out
    );
    
    wire [7:0] out1_2;
    wire [7:0] out2_3;
    wire [7:0] out3_4;
    
    reg8 reg8_1(
        .reset(reset),
        .clk(clk),
        .we(we),
        .data_in(data_in),
        .data_out(out1_2)
    );
    
    reg8 reg8_2(
        .reset(reset),
        .clk(clk),
        .we(we),
        .data_in(out1_2),
        .data_out(out2_3)
    );
    
    reg8 reg8_3(
        .reset(reset),
        .clk(clk),
        .we(we),
        .data_in(out2_3),
        .data_out(out3_4)
    );
    
    reg8 reg8_4(
        .reset(reset),
        .clk(clk),
        .we(we),
        .data_in(out3_4),
        .data_out(data_out)
    );
endmodule
