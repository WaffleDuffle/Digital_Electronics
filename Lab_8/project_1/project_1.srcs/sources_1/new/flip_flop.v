`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2024 09:20:34
// Design Name: 
// Module Name: flip_flop
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


module flip_flop(
    input data_in,
    input clk,
    input reset,
    output reg data_out
    );
    
    always@(posedge clk)begin
        if(reset)
            data_out <= 0;
        else
            data_out <= data_in;
    end
endmodule
