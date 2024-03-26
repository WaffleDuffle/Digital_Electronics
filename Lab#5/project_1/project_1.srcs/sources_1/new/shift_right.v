module shift_right(
    input [7:0] in0,
    input [7:0] in1,
    output [8:0] out0
);

    assign out0 = in1 >> in0;

endmodule