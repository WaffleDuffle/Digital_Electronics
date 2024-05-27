`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2024 14:46:07
// Design Name: 
// Module Name: circuit
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


module circuit(
    input in0,
    input in1,
    input sel,
    output out
    );
    
    wire w0, w1, w2;
    not p0(w0, sel);
    and p1(w1, in0, w0);
    and p2(w2, in1, sel);
    or p3(out, w1, w2);
endmodule
