`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2024 11:01:44
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
reg in1 = 1;
reg in2 = 0;
reg in3 = 0;
wire out0;

initial begin
    #7 in0 = 1;
    #3 in0 = 0;
end

initial begin
    #7 in2 = 1;
    #3 in2 = 0;
    #3 in2 = 1;
end

initial begin
    forever begin
        #1 in3 = ~in3;
    end
end

initial begin
    #20 $stop();
end

and4_gate DUT(.in0(in0), .in1(in1), .in2(in2), .in3(in3), .out0(out0));

endmodule