`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2024 21:21:24
// Design Name: 
// Module Name: circuit_fara_FF
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


module circuit_fara_FF(
    input a,
    input b,
    output out0,
    output out1
    );
    
    assign #5 out0 = ~(a | b);
    assign #5 out1 = out0 & b;
    
endmodule
