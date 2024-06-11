module demux (
    input [7:0] in,
    input sel,
    output reg [7:0] out0,
    output reg [7:0] out1
);

always@(*) begin
    case(sel)
        0: {out0, out1} = {in, 8'b0};
        1: {out0, out1} = {8'b0, in}; 
    endcase
end

endmodule