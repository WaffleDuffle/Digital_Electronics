`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2024 11:15:20
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
    input reset,
    input clk,
    output reg [29:0] out,
    output out_bit0,
    output out_bit1
    );
    
    always@(posedge clk)begin
        if(reset)
            out <= 0;
        else 
            out <= out + 1;
    end
    
    assign out_bit0 = out[0];
    assign out_bit1 = out[1];
endmodule
