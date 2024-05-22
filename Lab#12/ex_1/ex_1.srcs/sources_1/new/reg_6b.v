module reg_6b (
    input [5:0] in,
    input clk,
    input reset,
    output reg [5:0] out
);

always@(posedge clk) begin
    if(reset)
        out <= 0;
    else
        out <= in;
end


endmodule