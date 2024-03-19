`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2024 10:09:51
// Design Name: 
// Module Name: Transcoder
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


module Transcoder(
  input [3:0] in,
  output reg [6:0] out
  );

  always@(in) begin
    case(in)
      4'd0: out = 7'b1000000;
      4'd1: out = 7'b1111001;
      4'd2: out = 7'b0100100;
      4'd3: out = 7'b0110000;
      4'd4: out = 7'b0011001;
      4'd5: out = 7'b0010010;
      4'd6: out = 7'b0000010;
      4'd7: out = 7'b1111000;
      default: out = 7'b0000110;
    endcase 
  end

endmodule
