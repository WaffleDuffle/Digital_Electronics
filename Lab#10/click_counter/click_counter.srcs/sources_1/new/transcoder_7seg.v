`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2024 19:04:28
// Design Name: 
// Module Name: transcoder_7seg
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


module transcoder_7seg(
    input [3:0] in,
    output reg [6:0] out
    );
    
    always@(*)
begin
	case(in)
		4'd0: out = 7'b1000000;// h....a
		4'd1: out = 7'b1111001;
		4'd2: out = 7'b0100100;
		4'd3: out = 7'b0110000;
		4'd4: out = 7'b0011001;
		4'd5: out = 7'b0010010;
		4'd6: out = 7'b0000010;
		4'd7: out = 7'b1111000;
		4'd8: out = 7'b0000000;
		4'd9: out = 7'b0010000;
		4'd10: out = 7'b0001000;
		4'd11: out = 7'b0000011;
		4'd12: out = 7'b1000110;
		4'd13: out = 7'b0100001;
		4'd14: out = 7'b0000110;
		4'd15: out = 7'b0001110;
		default: out = 7'b1111111;//tot stins 
	endcase 
end  

endmodule
