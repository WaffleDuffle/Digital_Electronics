module add_block(
    input [1:0] data0,
    input [1:0] data1,
    input sel,
    output ok,
    output [1:0] out_to_mux4,
    output overflow
    );
    
    wire [1:0] w0;
    wire [1:0] w1;
    
    
    add_mine ADD(
    .in0(data0),
    .in1(data1),
    .out0(w0));
    
    rom_add ROM_ADD(
    .data({data1, data0}),
    .out(w1));
    
    overflow_compute OVERFLOW(
    .in0(data0),
    .in1(data1),
    .overflow(overflow));
    
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