`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2024 11:33:33
// Design Name: 
// Module Name: toggle_ff
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


module toggle_ff(
    input reset,
    input clk,
    input T,
    output reg out
    );
    
    always@(posedge clk)begin
        if(reset)
            out <= 0;
        else if(T)
            out <= ~out;
    
    end
endmodule
