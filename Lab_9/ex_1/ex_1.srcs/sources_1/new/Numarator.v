`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 11:50:54
// Design Name: 
// Module Name: Numarator
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


module Numarator
#(parameter WIDTH=8)(
    input reset,
    input en,
    input clk,
    output reg [WIDTH-1:0] count
    );
    
    always@(posedge clk) begin
        if(reset == 0)   
            count <= 0;
        else if(en == 0)
            count <= count;
        else
            count <= count + 1;        
    end
endmodule
