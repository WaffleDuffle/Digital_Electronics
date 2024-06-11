`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2024 21:14:09
// Design Name: 
// Module Name: flipflop_D
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


module flipflop_D(
    input data_in,
    input clk,
    output reg data_out
    );
    
    always@(posedge clk)begin
        data_out <= data_in;
    end
    
    
endmodule
