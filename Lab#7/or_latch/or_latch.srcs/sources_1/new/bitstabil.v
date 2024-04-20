`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2024 10:20:10
// Design Name: 
// Module Name: bitstabil
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


module bitstabil(
    input data_in,
    input clk,
    output reg data_out,
    input reset
    );
    
    always@(posedge clk)begin
        if(reset)begin
            data_out <= 0;
        end
        else data_out <= data_in;
    end
endmodule
