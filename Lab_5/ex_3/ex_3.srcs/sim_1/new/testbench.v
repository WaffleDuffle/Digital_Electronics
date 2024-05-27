`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2024 20:27:15
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
    
    reg in0 = 0;
    reg in1 = 0;
    reg in2 = 0;
    reg in3 = 0;
    reg [1:0] sel = 0;
    reg [3:0] data = 0;
    wire out0;
    wire out1;
    wire out2;
    wire out3;
    
    initial begin
        #4  in0 = 1;
            in1 = 1;
            in2 = 1;
            in3 = 1;
        #4  in0 = 0;
            in2 = 0;
            in3 = 0;
        #2  in0 = 1;
            in3 = 1;
    end
    
    initial begin
        #2  sel = 1;
        #2  sel = 2;
        #1  sel = 3;
        #1  sel = 2;
        #1  sel = 0;
    end
    
    initial begin
        #2  data = 1;
        #2  data = 2;
        #1  data = 3;
        #1  data = 4;
        #1  data = 5;
        #1  data = 6;
        #1  data = 7;
        #1  data = 0;
    end
    
    initial begin
        #30 $stop(); 
    end
    
    TOP top(.in0(in0), .in1(in1), .in2(in2), .in3(in3), .sel(sel), .data(data), .out0(out0), .out1(out1), .out2(out2), .out3(out3));
endmodule
