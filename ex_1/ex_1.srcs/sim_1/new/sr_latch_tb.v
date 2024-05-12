`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2024 12:20:17
// Design Name: 
// Module Name: sr_latch_tb
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


module sr_latch_tb(

    );
    
    reg R;
    reg S;
    wire Q;
    wire not_Q;
    
    sr_latch DUT(.S(S), .R(R), .Q(Q), .not_Q(not_Q));
    
    initial begin
        R = 1;
        #5  R = 0;
        #15 R = 1;
        #5  R = 0;
    end
    
    initial begin
        S = 0;
        #10 S = 1;
        #5  S = 0;
        #5  S = 1;
        #5  S = 0;
    end
    
    initial begin
        #40 $stop();
    end
endmodule
