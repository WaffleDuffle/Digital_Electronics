`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2024 21:26:54
// Design Name: 
// Module Name: circuit_cu_FF
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


module circuit_cu_FF(
    input a,
    input b,
    input clk,
    output Q0,
    output Q1
    );
    
    wire out0, out1;
    
    assign #5 out0 = ~(a | b);
    assign #5 out1 = out0 & b;
    
    flipflop_D P0(.data_in(out0), .clk(clk), .data_out(Q0));
    flipflop_D P1(.data_in(out1), .clk(clk), .data_out(Q1));
endmodule
