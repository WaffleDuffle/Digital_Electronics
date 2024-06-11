module add_8b(
    input [7:0] in0,
    input en,
    output [7:0] out
);
    
    assign out = (en) ? in0 + 3 : 0;

endmodule