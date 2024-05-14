`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2024 20:04:00
// Design Name: 
// Module Name: counter
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


module counter(
    input clk,
    input reset,
    input en,
    output reg [29:0] out
    );
    
    always@(posedge clk) begin
        if(reset)
            out <= 0;
         else if(en)
            out <= out + 1;
    end
endmodule
