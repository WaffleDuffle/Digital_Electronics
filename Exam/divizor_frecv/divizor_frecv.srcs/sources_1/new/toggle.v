`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 17:37:02
// Design Name: 
// Module Name: toggle
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


module toggle(
    input toggle,
    input clk,
    input reset,
    output reg out
    );
    
    always@(posedge clk) begin
        if(reset)
            out <= 0;
        else if(toggle)
            out <= ~out;
    end
endmodule
