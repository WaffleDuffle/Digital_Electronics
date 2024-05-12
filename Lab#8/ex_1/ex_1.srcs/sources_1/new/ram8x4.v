`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2024 20:24:33
// Design Name: 
// Module Name: ram8x4
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


module ram8x4(
    input clk,
    input we,
    input [2:0] addr_write,
    input [2:0] addr_read,
    input [3:0] data_write,
    output reg [3:0] data_read
    );
    
    reg [3:0] my_memory[7:0];
    
    always@(posedge clk)begin
        data_read <= my_memory[addr_read];
    end
    
    always@(posedge clk)begin
        if(we)begin
            my_memory[addr_write] <= data_write;
        end
    end
    
endmodule
