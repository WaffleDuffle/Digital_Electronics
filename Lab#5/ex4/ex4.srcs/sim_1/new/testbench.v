`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 17:43:17
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
    
    reg [7:0] instruction;
    reg [1:0] data0;
    reg [1:0] data1;
    wire ok;
    wire overflow;
    wire [1:0] out0;
    wire [1:0] out1;
    wire [1:0] out2;
    wire [1:0] out3;
    wire [7:0] instr_out;
    
    initial begin
        #10  instruction = 8'h02;
        #10  instruction = 8'hf0;
        #10  instruction = 8'hx;
    end
    
    initial begin
        #10  data0 = 1;
        #5   data0 = 2;
        #5   data0 = 3;
        #15  data0 = 2'bx;
    end
    
    initial begin
        #10  data1 = 1;
        #15  data1 = 0;
        #10 data1 = 2'bx;
    end
    
    initial begin
        #100 $stop();
    end
    
    TOP DUT(
    .data0(data0),
    .data1(data1),
    .instr_in(instruction),
    .ok(ok),
    .overflow(overflow),
    .out0(out0),
    .out1(out1),
    .out2(out2),
    .out3(out3),
    .instr_out(instr_out));
endmodule
