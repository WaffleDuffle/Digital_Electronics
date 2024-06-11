module second_comparator(
    input [29:0] in0,
    input [29:0] in1,
    output out
    );
    
    assign out = (in0 >= in1) ? 1 : 0;
endmodule