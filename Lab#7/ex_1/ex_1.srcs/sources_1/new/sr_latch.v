`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2024 12:07:51
// Design Name: 
// Module Name: sr_latch
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


module sr_latch(
    input S,
    input R,
    output Q,
    output not_Q
    );
    
    nor_gate P1(.in0(Q), .in1(S), .out(not_Q));
    nor_gate P0(.in0(R), .in1(not_Q), .out(Q));
    
    
endmodule
