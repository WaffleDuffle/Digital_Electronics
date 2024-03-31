module add_mine(
    input [1:0] in0,
    input [1:0] in1,
    output [1:0] out0
    );
    
    assign out0 = in0 + in1;
endmodule