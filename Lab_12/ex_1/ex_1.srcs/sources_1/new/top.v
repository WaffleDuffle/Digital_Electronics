`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2024 10:30:55
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
    input en,
    input [7:0] data_in,
    output [7:0] data_read_consonants,
    output [7:0] data_read_vowels,
    output [7:0] consonants,
    output [7:0] vowels,
    output check
    );
    
    wire [5:0] counter_reg;
    wire [5:0] reg_addr_ram;
    wire struct_we;
    
    counter_6b COUNTER(
        .en(en),
        .clk(clk),
        .reset(reset),
        .out(counter_reg)
    );
    
    reg_6b REG(
        .in(counter_reg),
        .clk(clk),
        .reset(reset),
        .out(reg_addr_ram)
    );
    
    vowel_checker_struct CHECKER(
        .data_in(data_in),
        .is_vowel(struct_we)
    );
    
    ram_consonants RAM_C(
        .clk(clk),
        .addr(reg_addr_ram),
        .we(en & ~(struct_we)),
        .w_data(data_in),
        .r_data(data_read_consonants)
    );
    
    ram_vowels RAM_V(
        .clk(clk),
        .addr(reg_addr_ram),
        .we(en & struct_we),
        .w_data(data_in),
        .r_data(data_read_vowels)
    );
    
    pass_check_fsm FSM(
        .en(en),
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .pass_ok(check)
    );
    
    demux DEMUX(
        .in(data_in),
        .sel(struct_we),
        .out0(consonants),
        .out1(vowels)
    );
    
endmodule
