`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2024 23:58:29
// Design Name: 
// Module Name: structural
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


module structural(
    input [11:0] seed,
    input [11:0] prev,
    output reg [3:0] data_out
    );
    
    reg [11:0] aux; 
    
    always@(*) begin
        aux = 2*prev + prev + 4; 
        case(seed[11:10])
            2'b00: data_out = prev[3:0];
            2'b01: data_out = prev[7:4];
            2'b10: data_out = prev[11:8];
            2'b11: data_out = aux[3:0];
        endcase
    end 
endmodule
