module special(
    input [1:0] in0,
    input [1:0] in1,
    output reg [1:0] out
    );
    
    wire data = {in1, in0};
    always@(*) begin
        case(data)
            4'b0101: out = 1;
            4'b0110: out = 1;
            4'b1001: out = 1;
            4'b1010: out = 1;
            4'b1111: out = 1;
            default: out = 0;
        endcase
    end
endmodule