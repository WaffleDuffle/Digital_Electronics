`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2024 20:51:33
// Design Name: 
// Module Name: ram64x8
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


module ram64x8(
    input clk,
    input we,
    input [5:0] addr_write,
    input [5:0] addr0_read,
    input [5:0] addr1_read,
    input [7:0] data_write,
    output reg [7:0] data0_read,
    output reg [7:0] data1_read
    );
    
    reg [7:0] my_memory[63:0];
    
    always@(posedge clk)begin
        data0_read <= my_memory[addr0_read];
        data1_read <= my_memory[addr1_read];
    end
    
    always@(posedge clk)begin
        if(we)begin
            my_memory[addr_write] <= data_write;
        end
    end
    
endmodule
