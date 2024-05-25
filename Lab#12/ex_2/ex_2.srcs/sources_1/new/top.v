`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2024 07:05:04
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
    input stop,
    input clk,
    input reset,
    input [5:0] addr_r,
    input [11:0] seed,
    output [11:0] data_read,
    output [11:0] data_current
    ); 
    
    wire [11:0] reg_out;
    wire [3:0] fsm_out, structural_out, desen_out; 
    wire [5:0] counter_out;
    
    fsm FSM(
        .clk(clk),
        .reset(reset),
        .start(start),
        .stop(stop),
        .seed(seed),
        .prev(reg_out),
        .data_out(fsm_out)
    );
    
    structural STRUCTURAL(
        .seed(seed),
        .prev(reg_out),
        .data_out(structural_out)
    );
    
    desen DESEN(
        .start(start),
        .stop(stop),
        .clk(clk),
        .reset(reset),
        .seed(seed),
        .prev(reg_out),
        .data_out(desen_out)
    );
    
    counter COUNTER(
        .en(stop),
        .clk(clk),
        .reset(reset),
        .data(counter_out)
    );
    
    delay_reg REG(
        .clk(clk),
        .reset(reset),
        .data_in({desen_out, structural_out, fsm_out}),
        .data_out(reg_out)    
    );
    
    ram RAM(
        .r_addr(addr_r),
        .w_addr(counter_out),
        .clk(clk),
        .we(stop),
        .w_data({desen_out, structural_out, fsm_out}),
        .r_data(data_read)
    );
    
    assign data_current = {desen_out, structural_out, fsm_out};
endmodule
