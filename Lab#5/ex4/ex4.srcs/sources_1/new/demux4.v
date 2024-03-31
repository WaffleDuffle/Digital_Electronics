module demux4(
    input [1:0] in,
    input [1:0] sel,
    output reg [1:0] out0,
    output reg [1:0] out1,
    output reg [1:0] out2,
    output reg [1:0] out3
    );

    always@(*) begin
        case(sel)
            2'b00: {out0, out1, out2, out3} = {in, 2'b00, 2'b00, 2'b00};
            2'b01: {out0, out1, out2, out3} = {2'b00, in, 2'b00, 2'b00};
            2'b10: {out0, out1, out2, out3} = {2'b00, 2'b00, in, 2'b00};
            2'b11: {out0, out1, out2, out3} = {2'b00, 2'b00, 2'b00, in};
        endcase
    end

endmodule