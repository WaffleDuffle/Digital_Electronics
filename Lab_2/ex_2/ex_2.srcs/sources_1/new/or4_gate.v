
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2024 20:45:33
// Design Name: 
// Module Name: or4_gate
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


module or4_gate(
    input in0,
    input in1,
    input in2,
    input in3,
    output out0
    );
    
    wire w0;
    wire w1;
    
    or2_gate or2_gate_0(.in0(in0), .in1(in1), .out0(w0));
    or2_gate or2_gate_1(.in0(in2), .in1(in3), .out0(w1));
    or2_gate or2_gate_2(.in0(w0), .in1(w1), .out0(out0));
endmodule
