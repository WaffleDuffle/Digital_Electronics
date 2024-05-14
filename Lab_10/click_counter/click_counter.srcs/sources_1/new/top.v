`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2024 19:17:09
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
    input button,
    output [6:0] out
    );
    
    wire debouncer_out_counter_en;
    wire [3:0] counter_out_transcoder_in;
    
    debouncer 
    #(.limit(20'd50_000))DEBOUNCE(
        .clk(clk),
        .in(button),
        .out(debouncer_out_counter_en)
    );
    
    counter COUNT(
        .clk(clk),
        .reset(reset),
        .en(debouncer_out_counter_en),
        .out(counter_out_transcoder_in)
    );
    
    transcoder_7seg TRANSCODER(
        .in(counter_out_transcoder_in),
        .out(out)
    );
    
    
    
endmodule
