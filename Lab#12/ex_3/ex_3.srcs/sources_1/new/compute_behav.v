
module compute_behav(
    input [7:0] in0,
    input [7:0] in1,
    output [7:0] out
    );
    
    
    assign out = (in1[0] == 0) ? (2*in0 + in1 + 3)%256:(2*in0 + in1 - 1)%256;
endmodule
