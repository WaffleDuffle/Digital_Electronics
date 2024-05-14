`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2024 12:23:48
// Design Name: 
// Module Name: first_comparator
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


module first_comparator(
    input [29:0] in0,
    input [29:0] in1,
    output out
    );
    
    assign out = (in0 <= in1) ? 1 : 0;
endmodule
