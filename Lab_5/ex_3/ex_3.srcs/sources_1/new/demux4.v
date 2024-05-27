module demux4(
    input in,
    input [1:0] sel,
    output reg out0,
    output reg out1,
    output reg out2,
    output reg out3
    );
    
    always@(in or sel)begin
        case(sel)
            2'b00: {out0, out1, out2, out3} = {in, 1'b0, 1'b0, 1'b0};
            2'b01: {out0, out1, out2, out3} = {1'b0, in, 1'b0, 1'b0};
            2'b10: {out0, out1, out2, out3} = {1'b0, 1'b0, in, 1'b0};
            2'b11: {out0, out1, out2, out3} = {1'b0, 1'b0, 1'b0, in};
        endcase
    end


endmodule