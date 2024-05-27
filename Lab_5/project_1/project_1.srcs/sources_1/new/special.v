module special(
    input [7:0] in0,
    input [7:0] in1,
    output [7:0] sel
);

    assign sel = (in0[7] == in1[7] == in0[0] == in1[0]) ? 1 : 0;
endmodule
