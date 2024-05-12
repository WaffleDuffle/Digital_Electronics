`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 12:56:49
// Design Name: 
// Module Name: s_p_reg
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


module s_p_reg(
    input clk,
    input en,
    input we,
    input data_in,
    output reg [7:0] data_out
    );
    
    reg [7:0] series_data;
    always@(posedge clk)begin
        if(en)
            series_data <= {data_in, series_data[7:1]};
        else if(we)
            data_out <= series_data;
    end
endmodule
