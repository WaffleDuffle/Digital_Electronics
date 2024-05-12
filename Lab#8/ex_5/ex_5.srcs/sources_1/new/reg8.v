`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 13:17:51
// Design Name: 
// Module Name: reg8
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


module reg8(
    input reset,
    input clk,
    input we,
    input [7:0] data_in,
    output reg [7:0] data_out
    );
    
    always@(posedge clk)begin
        if(reset)begin
            data_out <= 0;
        end 
        else begin
            if(we)
                data_out <= data_in;
        end
    
    end
endmodule
