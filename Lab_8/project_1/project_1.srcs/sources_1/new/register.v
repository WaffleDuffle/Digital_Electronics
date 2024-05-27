`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2024 09:30:50
// Design Name: 
// Module Name: register
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


module register(
    input [7:0] data_in,
    input clk,
    input reset,
    input we,   // write enable
    output reg [7:0] data_out
    );
    
    always@(posedge clk)begin
        if(reset)   
            data_out <= 0;
        else begin
            if(we)
                data_out <= data_in;
            else
                data_out <= data_out;
        end    
           
    
    end
endmodule
