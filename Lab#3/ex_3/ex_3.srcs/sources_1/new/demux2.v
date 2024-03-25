
module demux2(
    input in0,
    input sel,
    output out0, out1
    );
    
    assign {out0, out1} = (sel == 1) ? {1'b0, in0} : {in0, 1'b0};
    
endmodule
