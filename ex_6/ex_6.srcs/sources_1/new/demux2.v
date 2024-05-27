module demux2(
    input in,
    input sel,
    output reg out0,
    output reg out1
);

    always@(*)begin
        case(sel)
            0: {out0, out1} = {in, 1'b0};
            1: {out0, out1} = {1'b0, in};
        endcase
    end


endmodule