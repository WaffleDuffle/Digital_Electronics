`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2024 20:25:30
// Design Name: 
// Module Name: delay_reg
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


module delay_reg(
    input [11:0] data_in,
    input clk,
    input reset,
    output reg [11:0] data_out
    );
    
    always@(posedge clk) begin
        if(reset)
            data_out <= 0;
        else 
            data_out <= data_in;
    end
    
endmodule
