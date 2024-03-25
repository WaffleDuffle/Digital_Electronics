`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2024 10:55:51
// Design Name: 
// Module Name: and4_gate
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


module and4_gate(
    input in0,
    input in1,
    input in2,
    input in3,
    output out0
    );
    wire wo;
    wire w1;
    wire w2;
    wire w3;
    wire w4;
    wire w5;
    wire w6;
    wire w7;
    
    nand2_gate n2_0(.in0(in0), .in1(in1), .out0(w0));
    nand2_gate n2_1(.in0(in0), .in1(in1), .out0(w1));
    nand2_gate n2_2(.in0(in2), .in1(in3), .out0(w2));
    nand2_gate n2_3(.in0(in2), .in1(in3), .out0(w3));
    nand2_gate n2_4(.in0(w0), .in1(w1), .out0(w4));
    nand2_gate n2_5(.in0(w2), .in1(w3), .out0(w5));
    nand2_gate n2_6(.in0(w4), .in1(w5), .out0(w6));
    nand2_gate n2_7(.in0(w4), .in1(w5), .out0(w7));
    nand2_gate n2_8(.in0(w6), .in1(w7), .out0(out0));
    
endmodule
