module sub_8b(
    input [7:0] in0,
    input en,
    output [7:0] out
);
    
    assign out = (en) ? in0 - 1 : 0;

endmodule