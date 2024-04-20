`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2024 10:07:40
// Design Name: 
// Module Name: ram
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


module ram_citire_sincron(
    input [5:0] addr_read,
    input [5:0] addr_write,
    input we,
    input clk,
    input [7:0] data_write,
    output reg [7:0] data_read
    );
    
    reg [7:0] memorie_meu [0:63];
    
    always@(posedge clk)begin
        if(we)begin
            memorie_meu[addr_write] <= data_write;
        end
    end
    
    always@(posedge clk)begin
        data_read <= memorie_meu[addr_read];
    end
endmodule
