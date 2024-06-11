`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2024 11:46:27
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
    input clk,
    input reset,
    output out,
    output out_bit0,
    output out_bit1
    );
    
    parameter LIMIT_PERIOD = 75000000;
    
    wire [29:0] counter_in1_comp;
    wire out_comp;
    
    comparator COMP(
    .in0(LIMIT_PERIOD),
    .in1(counter_in1_comp),
    .out(out_comp));
    
    counter COUNT(
    .clk(clk),
    .reset(out_comp | reset),
    .out(counter_in1_comp),
    .out_bit0(out_bit0),
    .out_bit1(out_bit1));
    
    toggle_ff TOGGLE(
    .clk(clk),
    .T(out_comp | reset),
    .reset(reset),
    .out(out)
    );
    
endmodule
