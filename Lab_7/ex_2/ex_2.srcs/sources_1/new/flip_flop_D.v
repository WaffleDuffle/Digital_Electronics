`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2024 13:52:51
// Design Name: 
// Module Name: flip_flop_D
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


module flip_flop_D(
    input data_in,
    input clock,
    input reset,
    output reg data_out
);

always@(posedge clock) begin
    if(reset)
        data_out <= 0;
    else
        data_out <= data_in; // atribuire non-blocanta
end

endmodule
