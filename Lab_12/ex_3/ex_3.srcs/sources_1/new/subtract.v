module subtract(
    input [10:0] in0,
    input in1,
    output [10:0] out
);
    
    assign out = in0 - in1;

endmodule