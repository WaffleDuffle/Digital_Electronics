`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2024 22:36:11
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


module testbench();

    reg in0 = 0;
    reg sel = 0;
    wire [1:0] out;
    
    initial begin
        #2 in0 = 1;
        #10 in0 = 0;
        #2 in0 = 1;
    end
    
    initial begin
        #3 sel = 1;
        #5 sel = 0;
        #6 sel = 1;
    end
    
    initial begin
        #20 $stop();
    end
    
    demux2 DUT(.in0(in0), .sel(sel), .out0(out[0]), .out1(out[1]));
endmodule
