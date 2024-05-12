`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2024 21:36:20
// Design Name: 
// Module Name: p_s_reg
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


module p_s_reg(
    input clk,
    input en,
    input we,
    input [7:0] data_in,
    output reg data_out
    );
    
    reg [7:0] parallel_data;
    
    always@(posedge clk)begin
        if(en)
            parallel_data <= parallel_data >> 1;
        else if(we)
            parallel_data <= data_in;
    end
    
    always@(*)begin
        data_out = parallel_data[0];
    end
endmodule
