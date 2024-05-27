module eq(
    input [1:0] in0,
    input [1:0] in1,
    output [1:0] out
    );
    
    assign out = (in0 == in1) ? 1 : 0;
endmodule