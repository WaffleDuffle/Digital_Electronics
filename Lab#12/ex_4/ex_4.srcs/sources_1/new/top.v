`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2024 19:20:35
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
    input start,
    input clk,
    input reset,
    input [7:0] data_in,
    output out_tx
    );
    
    wire crc_reg;
    wire [19:0] counter_baud_comp;
    wire comp_20_1_out, comp_20_2_out;
    wire comp_4_1_out, comp_4_2_out;
    wire toggle_out;
    wire [3:0] counter_bit_out;
    wire [10:0] reg_out;
    wire mux_out;
    
    crc_calc CRC(
        .data(data_in),
        .out(crc_reg)
    );
    
    toggle_ff TOGGLE(
        .clk(clk),
        .reset(reset),
        .toggle((start & ~toggle_out) |
        (comp_20_2_out & comp_4_1_out)),
        .out(toggle_out)
    );
    
    counter_baud_rate COUNTER_BAUD(
        .clk(clk),
        .reset_async(reset),
        .reset_sync(comp_20_2_out),
        .en(toggle_out),
        .out(counter_baud_comp)
    );
    
    counter_bit_select COUNTER_BIT(
        .clk(clk),
        .reset(reset),
        .en(comp_20_2_out),
        .out(counter_bit_out)
    );
    
    comp_eq_20 COMP_20_1(
        .in0(counter_baud_comp),
        .in1(0),
        .out(comp_20_1_out)
    );
    
    comp_eq_20 COMP_20_2(
        .in0(20'h01458),
        .in1(counter_baud_comp),
        .out(comp_20_2_out)
    );
    
    comp_eq_4 COMP_4_1(
        .in0(10),
        .in1(counter_bit_out),
        .out(comp_4_1_out)
    );
    
    comp_eq_4 COMP_4_2(
        .in0(counter_bit_out),
        .in1(0),
        .out(comp_4_2_out)
    );
    
    reg0 REG(
        .clk(clk),
        .reset(reset),
        .data_in0(0),
        .load(comp_20_1_out & comp_4_2_out & start),
        .data_in18(data_in),
        .data_in9(crc_reg),
        .data_in10(1),
        .data_out(reg_out)
    );
    
    mux MUX(
        .in(reg_out),
        .sel(counter_bit_out),
        .out(mux_out)
    );
    
    assign out_tx = mux_out | (~toggle_out);
    
    
endmodule
