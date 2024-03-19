`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2024 10:25:51
// Design Name: 
// Module Name: top
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


module top(input [3:0] in_transcoder, // by default input wire
            input [1:0] in_decoder,
            output [6:0] out_transcoder, // by default output wire
            output [3:0] out_decoder

    );
    
    Transcoder TR(.in(in_transcoder), .out(out_transcoder)); // .in / .out are ports  in_trans/out_trans are signals
    Decoder DC(.in(in_decoder), .out(out_decoder));
endmodule
