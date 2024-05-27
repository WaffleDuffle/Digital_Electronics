`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2024 22:49:09
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

    reg [7:0] in0 = 0, in1 = 0;
    reg carry_in = 0;
    wire carry_out;
    wire [7:0] out0;
    
    initial begin
        #2 in0 = 14;
        #5 in0 = 19;
        #10 in0 = 1;
    end
    
    initial begin
        #3 in1 = 10;
        #5 in1 = 9;
        #5 in1 = 0;
    end
    
    initial begin
       #10 carry_in = 1;
    end
    
    initial begin
        #20 $stop();
    end
    
    sumator_8b DUT(.in0(in0), .in1(in1), .carry_in(carry_in), .out0(out0), .carry_out(carry_out));
endmodule
