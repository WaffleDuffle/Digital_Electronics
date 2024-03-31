
module TOP(
    input in0,
    input in1,
    input in2,
    input in3,
    input [1:0] sel, 
    input [3:0] data,
    output out0,
    output out1,
    output out2,
    output out3 
    );
    wire wire_to_demux4;
    wire [1:0] sel_to_demux4;
    wire wire_to_sel_mux2;
    
    
    mux4 MUX4(.in0(in0), .in1(in1), .in2(in2), .in3(in3), .sel(sel), .out(wire_to_demux4));
    
    parity_calc PARITY(.data(data), .out(wire_to_sel_mux2));
    
    mux2 MUX2(.in0(~sel), .in1(sel), .sel(wire_to_sel_mux2), .out(sel_to_demux4));
    
    demux4 DEMUX(.in(wire_to_demux4), .sel(sel_to_demux4), .out0(out0), .out1(out1), .out2(out2), .out3(out3));
    
endmodule
