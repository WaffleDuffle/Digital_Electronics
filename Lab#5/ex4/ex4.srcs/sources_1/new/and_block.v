module and_block(
    input [1:0] data0,
    input [1:0] data1,
    input sel,
    output ok,
    output [1:0] out_to_mux4
    );
    
    wire [1:0] w0;
    wire [1:0] w1;
    
    
    and_mine ADD(
    .in0(data0),
    .in1(data1),
    .out0(w0));
    
    rom_and ROM_AND(
    .data({data1, data0}),
    .out(w1));
    
    eq EQ(
    .in0(w0),
    .in1(w1),
    .out(ok));
    
    mux2 MUX2(
    .in0(w0),
    .in1(w1),
    .sel(sel),
    .out0(out_to_mux4));
endmodule