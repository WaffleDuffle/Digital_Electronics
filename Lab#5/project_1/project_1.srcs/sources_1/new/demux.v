
module demux(
    input [7:0] in0,
    input [2:0] sel,
    output reg [7:0] out0,
    output reg [7:0] out1,
    output reg [7:0] out2,
    output reg [7:0] out3
    );
    
always@(in0 or sel) begin
    case(sel)
        0: {out0, out1, out2, out3} = {in0, 8'b0,8'b0, 8'b0};
        1: {out0, out1, out2, out3} = {8'b0, in0, 8'b0, 8'b0};
        2: {out0, out1, out2, out3} = {8'b0, 8'b0, in0, 8'b0};
        3: {out0, out1, out2, out3} = {8'b0, 8'b0, 8'b0, in0};
    endcase
end
    
endmodule
