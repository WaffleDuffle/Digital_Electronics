`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2024 09:36:19
// Design Name: 
// Module Name: TOP
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


module TOP(
    input R,
    input S,
    output Q,
    output not_Q
    );
    
    nor_mine nor_1(.in0(R), .in1(not_Q), .out0(Q));
    nor_mine nor_2(.in0(S), .in1(Q), .out0(not_Q));
endmodule
