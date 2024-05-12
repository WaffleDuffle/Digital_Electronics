`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 20:49:16
// Design Name: 
// Module Name: clock_generator
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


module clock_generator(
    input clk,
    input reset,
    output clkout1,
    output clkout2,
    output clkout4,
    output clkout8
    );
    
    reg [3:0] count;
    
    always@(posedge clk) begin
        if(reset)
            count <= 0;
        else
            count <= count + 1;
    end
    
    assign clkout1 = count[3];
    assign clkout2 = count[2];
    assign clkout4 = count[1];
    assign clkout8 = count[0];
    
endmodule
