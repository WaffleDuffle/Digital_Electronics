
module comparator(
    input [7:0] in0,
    input [7:0] in1,
    output out0
    );
    
    assign out0 = (in0 == in1) ? 1 : 0;
endmodule
