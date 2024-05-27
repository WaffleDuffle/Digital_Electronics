module and_mine(
    input [7:0] in0,
    input [7:0] in1,
    output [8:0] out0
);

    assign out0 = in0 & in1;

endmodule