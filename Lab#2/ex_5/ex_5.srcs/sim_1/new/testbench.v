`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2024 11:39:17
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

    reg [3:0] in0 = 0;
    reg [3:0] in1 = 0;
    reg [3:0] in2 = 15;
    reg [3:0] in3 = 7;
    wire [3:0] out0;
    
    initial begin
        #2 in0 = 1;
        #2 in0 = 2;
        #2 in0 = 3;
        #4 in0 = 15;
    end
    
    initial begin
        #1 in1 = 3;
        #5 in1 = 15;
    end
    
    initial begin
        #1 in3 = 4;
        #2 in3 = 9;
        #2 in3 = 6;
        #2 in3 = 0;
    end
    
    initial begin
        #20 $stop();    
    end
    
    and4_4b DUT(
    .in0_bit0(in0[0]),
    .in1_bit0(in1[0]),
    .in2_bit0(in2[0]),
    .in3_bit0(in3[0]),
    
    .in0_bit1(in0[1]),
    .in1_bit1(in1[1]),
    .in2_bit1(in2[1]),
    .in3_bit1(in3[1]),
    
    .in0_bit2(in0[2]),
    .in1_bit2(in1[2]),
    .in2_bit2(in2[2]),
    .in3_bit2(in3[2]),
    
    .in0_bit3(in0[3]),
    .in1_bit3(in1[3]),
    .in2_bit3(in2[3]),
    .in3_bit3(in3[3]),
    
    .out0_bit0(out0[0]),
    .out0_bit1(out0[1]),
    .out0_bit2(out0[2]),
    .out0_bit3(out0[3])
    );
endmodule
