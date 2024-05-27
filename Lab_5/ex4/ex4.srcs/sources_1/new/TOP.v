module TOP(
    input [1:0] data0,
    input [1:0] data1,
    input [7:0] instr_in,
    output ok,
    output overflow,
    output [1:0] out0,
    output [1:0] out1,
    output [1:0] out2,
    output [1:0] out3,
    output [7:0] instr_out
    );
    
    wire ok1;
    wire ok2;
    wire [1:0] out_to_mux4_0;
    wire [1:0] out_to_mux4_1;
    wire [1:0] out_to_mux4_2;
    wire [1:0] in_to_demux4;
    
    add_block ADD_BLOCK(
    .data0(data0),
    .data1(data1),
    .sel(instr_in[0]),
    .ok(ok1),
    .out_to_mux4(out_to_mux4_0),
    .overflow(overflow));
    
    and_block AND_BLOCK(
    .data0(data0),
    .data1(data1),
    .sel(instr_in[0]),
    .ok(ok2),
    .out_to_mux4(out_to_mux4_1));
    
    special SPECIAL(
    .in0(data0),
    .in1(data1),
    .out(out_to_mux4_2));
    
    assign ok = ok1 | ok2;
    
    mux4 MUX4(
    .in0(out_to_mux4_0),
    .in1(out_to_mux4_1),
    .in2(out_to_mux4_2),
    .in3(0),
    .sel(instr_in[2:1]),
    .out0(in_to_demux4));
    
    demux4 DEMUX4(
    .in(in_to_demux4),
    .sel(instr_in[4:3]),
    .out0(out0),
    .out1(out1),
    .out2(out2),
    .out3(out3));
    
    assign instr_out = instr_in;
endmodule