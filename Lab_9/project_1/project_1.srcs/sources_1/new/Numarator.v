`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 19:56:58
// Design Name: 
// Module Name: Numarator
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


module Numarator
    #(parameter WIDTH = 8)(
        input clk,
        input reset,
        output reg[WIDTH-1:0] count
    );
    
    always@(posedge clk) begin
        if(!reset)
            count <= 0;
        else
            count <= count + 1;
    end
endmodule
