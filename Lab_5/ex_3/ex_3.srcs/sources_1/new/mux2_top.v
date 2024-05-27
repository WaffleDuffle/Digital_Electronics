module mux2_top(
    input [1:0] in0,
    input [1:0] in1,
    input sel,
    output [1:0] out
    );

    assign out = (sel == 1) ? in1 : in0;

endmodule