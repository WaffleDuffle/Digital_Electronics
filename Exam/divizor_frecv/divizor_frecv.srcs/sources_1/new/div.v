`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 17:30:11
// Design Name: 
// Module Name: div
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


module divi(
    input reset,
    input en,
    input clk,
    input [7:0] in,
    output out
    );
        
    wire [7:0] counter_out;
    wire [7:0] counter_out_nor;
    counter8b COUNTER(
        .clk(clk),
        .reset(reset),
        .en(en),
        .in(in),
        .load(counter_out_nor),
        .out(counter_out)  
    );
    
    assign counter_out_nor = ~(counter_out[0] | 
    counter_out[1] |
    counter_out[2] |
    counter_out[3] |
    counter_out[4] |
    counter_out[5] |
    counter_out[6] |
    counter_out[7]);
    
    toggle TOGGLE(
        .clk(clk),
        .reset(reset),
        .toggle(counter_out_nor),
        .out(out)
    );
    
endmodule
