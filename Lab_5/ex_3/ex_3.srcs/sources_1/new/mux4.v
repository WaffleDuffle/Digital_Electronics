module mux4(
    input in0,
    input in1,
    input in2,
    input in3,
    input [1:0] sel,
    output out
    );
    wire w1, w2;
    mux2 mux2_1(.in0({0,in0}), .in1({0,in1}), .sel(sel[0]), .out(w1));
    mux2 mux2_2(.in0({0,in2}), .in1({0,in3}), .sel(sel[0]), .out(w2));
    mux2 mux2_3(.in0({0,w1}), .in1({0,w2}), .sel(sel[1]), .out(out));
    
endmodule