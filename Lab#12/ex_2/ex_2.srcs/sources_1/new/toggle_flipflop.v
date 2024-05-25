`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2024 23:31:19
// Design Name: 
// Module Name: toggle_flipflop
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


module toggle_flipflop(
    input toggle,
    input clk,
    input reset,
    output reg data
    );
    
    always@(posedge clk) begin
        if(reset)
            data <= 0;
        else if(toggle)
            data <= ~data;
    end
endmodule
