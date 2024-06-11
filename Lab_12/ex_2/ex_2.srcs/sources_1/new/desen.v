`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2024 23:50:07
// Design Name: 
// Module Name: desen
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


module desen(
    input start,
    input stop,
    input clk,
    input reset,
    input [11:0] prev,
    input [11:0] seed,
    output [3:0] data_out
    );
    
    wire toggle_counter;
    wire [3:0] counter_adder, adder_lut;
    
    toggle_flipflop TOGGLE(
        .toggle(start | stop),
        .clk(clk),
        .reset(reset),
        .data(toggle_counter)
    );
    
    counter_4b COUNTER(
        .en(toggle_counter),
        .clk(clk),
        .reset(reset),
        .data(counter_adder)
    );
    
    adder ADDER(
        .in0(seed),
        .in1(prev),
        .in2(counter_adder),
        .out(adder_lut)
    );
    
    lut ROM(
        .addr(adder_lut),
        .data(data_out)
    );
    
endmodule
