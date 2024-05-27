`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2024 19:05:31
// Design Name: 
// Module Name: freq_div
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


module freq_div(
    input clk,
    input reset,
    input en,
    output clkout2,
    output clkout4,
    output clkout8
    );
    
    reg [2:0] count;
    always@(posedge clk) begin
        if(reset)
            count <= 0;
        else if(en)
            count <= count + 1;
    end
    
    assign clkout2 = count[0];
    assign clkout4 = count[1];
    assign clkout8 = count[2]; 
endmodule
