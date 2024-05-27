module demux2_4b(
    input [3:0] in,
    input sel,
    output reg [3:0] out0,
    output reg [3:0] out1
);

    always@(*)begin
        case(sel)
            0: {out0, out1} = {in, 4'b0000};
            1: {out0, out1} = {4'b0000, in};
        endcase
    end


endmodule