module overflow_compute(
    input [1:0] in0,
    input [1:0] in1,
    output overflow
    );
    wire [1:0] out;
    
    assign {overflow, out} = in0 + in1;

endmodule