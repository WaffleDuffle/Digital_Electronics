`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2024 09:38:21
// Design Name: 
// Module Name: testbench
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


module testbench(

    );
    
    reg S;
    reg R;
    wire Q;
    wire not_Q;
    
    initial begin
        R = 1;
        S = 0;
        #5 R = 0;
        #5 S = 1;
        #5 S = 0;
        #5 R = 1;
        S = 1;
        #5 $stop();
    end
    
    TOP DUT(.R(R), .S(S), .Q(Q), .not_Q(not_Q));
endmodule
