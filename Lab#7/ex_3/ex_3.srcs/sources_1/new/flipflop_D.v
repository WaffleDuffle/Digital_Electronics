`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2024 17:57:01
// Design Name: 
// Module Name: flipflop_D
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


module flipflop_D(
    input data_in,
    input clock,
    input reset,
    output reg data_out
);

always@(posedge clock, negedge reset) begin
    data_out <= data_in; // atribuire non-blocanta
end

endmodule
