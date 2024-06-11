`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2024 20:27:02
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


module ram(
    input [5:0] r_addr,
    input [5:0] w_addr,
    input [11:0] w_data,
    input we,
    input clk,
    output [11:0] r_data
    );
    
    
    reg [11:0] memorie_meu[5:0];
    
    assign r_data = memorie_meu[r_addr];
    
    always@(posedge clk) begin
        if(we) begin
            memorie_meu[w_addr] <= w_data;
        end
            
    end
endmodule
