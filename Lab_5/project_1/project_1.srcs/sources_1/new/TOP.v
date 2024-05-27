
module TOP(
    input [15:0] instruction,
    input [7:0] data0,
    input [7:0] data1,
    output overflow_flag,
    output [7:0] out0,
    output [7:0] out1,
    output [7:0] out2,
    output [7:0] out3,
    output zero_flag
    );
    
    wire [7:0] shift_right_first_mux_in0;
    wire [7:0] shift_left_first_mux_in1;
    wire [7:0] add_first_mux_in2;
    wire [7:0] sub_first_mux_in3;
    
    wire [7:0] and_second_mux_in0;
    wire [7:0] or_second_mux_in1;
    wire [7:0] xor_second_mux_in2;
    
    wire [7:0] first_mux_third_mux_in0;
    wire [7:0] second_mux_third_mux_in1;
    wire [7:0] special_third_mux_in3;
    
    wire [7:0] third_mux_demux_in0;
    
    shift_right SHIFT_RIGHT(.in0(data0), .in1(data1), .out0(shift_right_first_mux_in0));
    shift_left SHIFT_LEFT(.in0(data0), .in1(data1), .out0(shift_left_first_mux_in1));
    add_mine ADD(.in0(data0), .in1(data1), .out0({overflow_flag,add_first_mux_in2}));
    sub_mine SUB(.in0(data0), .in1(data1), .out0(sub_first_mux_in3));
    and_mine AND(.in0(data0), .in1(data1), .out0(and_second_mux_in0));
    or_mine OR(.in0(data0), .in1(data1), .out0(or_second_mux_in1));
    xor_mine XOR(.in0(data0), .in1(data1), .out0(xor_second_mux_in2));
    
    //FIRST MUX
    
    mux MUX_FIRST(
    .in0(shift_right_first_mux_in0),
    .in1(shift_left_first_mux_in1), 
    .in2(add_first_mux_in2),
    .in3(sub_first_mux_in3),
    .sel(instruction[11:10]),
    .out0(first_mux_third_mux_in0));
    
    // SECOND MUX
    
    mux MUX_SECOND(
    .in0(and_second_mux_in0),
    .in1(or_second_mux_in1), 
    .in2(xor_second_mux_in2),
    .in3(1),
    .sel(instruction[11:10]),
    .out0(second_mux_third_mux_in1));
    
    // SPECIAL
    
    special SPECIAL(.in0(data0), .in1(data1), .sel(special_third_mux_in3));
    
    // THIRD MUX
    
    mux MUX_THIRD(
    .in0(first_mux_third_mux_in0),
    .in1(second_mux_third_mux_in1), 
    .in2(0),
    .in3(special_third_mux_in3),
    .sel(instruction[13:12]),
    .out0(third_mux_demux_in0));
    
    // DEMUX + COMP
    
    demux DEMUX(
    .in0(third_mux_demux_in0),
    .sel(instruction[15:14]),
    .out0(out0),
    .out1(out1),
    .out2(out2),
    .out3(out3));
    
    comparator COMP(.in0(third_mux_demux_in0), .in1(0), .out0(zero_flag));
endmodule
