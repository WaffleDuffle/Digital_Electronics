
module and4_4b(
    input in0_bit0,
    input in1_bit0,
    input in2_bit0,
    input in3_bit0,
    
    input in0_bit1,
    input in1_bit1,
    input in2_bit1,
    input in3_bit1,
    
    input in0_bit2,
    input in1_bit2,
    input in2_bit2,
    input in3_bit2,
    
    input in0_bit3,
    input in1_bit3,
    input in2_bit3,
    input in3_bit3,
    
    output out0_bit0,
    output out0_bit1,
    output out0_bit2,
    output out0_bit3
    );
    
    and4_1b poarta_pt_bit_0(.in0(in0_bit0), .in1(in1_bit0), .in2(in2_bit0), .in3(in3_bit0), .out0(out0_bit0));
    and4_1b poarta_pt_bit_1(.in0(in0_bit1), .in1(in1_bit1), .in2(in2_bit1), .in3(in3_bit1), .out0(out0_bit1));
    and4_1b poarta_pt_bit_2(.in0(in0_bit2), .in1(in1_bit2), .in2(in2_bit2), .in3(in3_bit2), .out0(out0_bit2));
    and4_1b poarta_pt_bit_3(.in0(in0_bit3), .in1(in1_bit3), .in2(in2_bit3), .in3(in3_bit3), .out0(out0_bit3));
    
endmodule
