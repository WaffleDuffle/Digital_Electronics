`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2024 20:11:06
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


module top
#(parameter LIMIT_PERIOD = 15'd26000,
  parameter LIMIT_NR_REPETITIONS = 0)(
    input clk,
    input reset,
    output out
    );
    
    wire out_c2_reset_counter1;
    wire out_c1_en_counter1;
    wire [29:0] out_counter1_in1_c2;
    wire out_c3_reset_counter2;
    wire [29:0] out_counter3_in1_c3;
    wire [29:0] out_counter2_in1_c1;
    
    counter COUNTER1(
        .clk(clk),
        .reset(reset | out_c2_reset_counter1),
        .en(out_c1_en_counter1),
        .out(out_counter1_in1_c2)
    );
    
    counter COUNTER2(
        .clk(clk),
        .reset(reset | out_c1_en_counter1),
        .en(1),
        .out(out_counter2_in1_c1)
    );
    
    counter COUNTER3(
        .clk(clk),
        .reset(reset | out_c3_reset_counter2),
        .en(out_c2_reset_counter1),
        .out(out_counter3_in1_c3)
    );
    
    comparator_mic C1(
        .in0(LIMIT_PERIOD),
        .in1(out_counter2_in1_c1),
        .out(out_c1_en_counter1)
    );
    
    comparator_mic C2(
        .in0(LIMIT_NR_REPETITIONS),
        .in1(out_counter1_in1_c2),
        .out(out_c2_reset_counter1)
    );
    
    comparator_mic C3(
        .in0(LIMIT_PERIOD),
        .in1(out_counter3_in1_c3),
        .out(out_c3_reset_counter2)
    );
    
    comparator_mare C(
        .in0(out_counter3_in1_c3),
        .in1(out_counter2_in1_c1),
        .out(out)
    );
    
    
endmodule
