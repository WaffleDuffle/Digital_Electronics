`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2024 10:54:14
// Design Name: 
// Module Name: FSM2_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments
// 
//////////////////////////////////////////////////////////////////////////////////


module FSM2_TB();

reg  clock_t;
reg  reset_t;
reg  in_t;
wire out_t;

initial begin
    clock_t = 0;
    forever #1 clock_t = ~clock_t;
end

initial begin
        in_t = 0;
        reset_t = 1;
    #2  reset_t = 0;
    #10 in_t = 1;
    #5	in_t = 0;
    #15 in_t = 1;
    #5	in_t = 0;
    #10 $stop();
end

FSM2_Meally DUT(
    .clk(clock_t),
    .reset(reset_t),
    .in(in_t),
    .out(out_t)
);
   
endmodule
