`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2024 10:35:08
// Design Name: 
// Module Name: testbench
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


module testbench();

    reg [7:0] data0;
    reg [7:0] data1;
    reg [15:0] instruction;
    wire overflow_flag;
    wire [7:0] out0;
    wire [7:0] out1;
    wire [7:0] out2;
    wire [7:0] out3;
    wire zero_flag;
    
    initial begin
        #40 $stop();
    end
    
    initial begin
        #2 instruction = 16'hffff;
        #4 instruction = 16'b00_00_10_00000000;
        #5 instruction = 0; 
    end
    
    initial begin
        #2 data0 = 0;
        #2 data0 = 255;
        #2 data0 = 1;
        #1 data0 = 2;
        #2 data0 = 0;
    end
    
    initial begin
        #2 data1 = 0;
        #2 data1 = 255;
        #2 data1 = 1;
        #2 data1 = 3;
        #2 data1 = 0;
    end
    
    
    TOP DUT(
    .instruction(instruction),
    .data0(data0), 
    .data1(data1), 
    .overflow_flag(overflow_flag), 
    .out0(out0), 
    .out1(out1), 
    .out2(out2), 
    .out3(out3),
    .zero_flag(zero_flag)); 
    
endmodule
