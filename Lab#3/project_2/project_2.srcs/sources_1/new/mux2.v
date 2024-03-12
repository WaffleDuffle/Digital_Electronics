`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2024 10:48:19
// Design Name: 
// Module Name: mux2
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


module mux2(input [3:0] in0,
            input [3:0] in1,   // vector de 4 intrari
            input sel, // vectori de 2 alegeri
            output [3:0] out); //output wire out
            
assign out = (sel == 1) ? in1 : in0;

endmodule
