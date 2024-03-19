`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2024 09:38:01
// Design Name: 
// Module Name: Decoder
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


module Decoder(
    input [1:0] in,
    output reg [3:0] out
    );
    
    always@(*) begin 
        case(in)
            3: out = 4'b0001;
            2: out = 4'b0010;
            1: out = 4'b0100;
            0: out = 4'b1000;
        endcase
    end
endmodule
