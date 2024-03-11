`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2024 14:46:48
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

    reg in0;
    reg in1;
    reg sel;
    wire out;
    initial begin
        in0 = 0;
        in1 = 0;
        sel = 0;
     #1 in0 = 1;
        sel = 1;
     #1 sel = 0;
     #1 in0 = 0;
        in1 = 1;
        sel = 1;
     #2 in0 = 1;
        sel = 0;
     #1 in0 = 0;
     #1 in1 = 0;
     
     end
     
     initial begin
        #10 $stop();
     end
     
     circuit DUT(.in0(in0), .in1(in1), .sel(sel), .out(out));
endmodule
