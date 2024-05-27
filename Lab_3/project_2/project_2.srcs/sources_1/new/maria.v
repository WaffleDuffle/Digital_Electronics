`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2024 10:44:28
// Design Name: 
// Module Name: maria
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


module maria(
    input [3:0] a,
    input [3:0] b,
    input [3:0] c,
    input [3:0] d,
    input sel,
    output [4:0] out
    );
 
    wire [3:0] w1;
    wire [3:0] w2;
    
    mux2 gigel(.in0(a), .in1(b), .sel(sel), .out(w1));
    mux2 ionel(.in0(c), .in1(d), .sel(sel), .out(w2));
    sum P(.in0(gigel), .in1(ionel), .out(out));
    
endmodule
