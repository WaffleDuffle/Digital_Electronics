
module reg_8b(
    input [7:0] in,
    input clk,
    input en,
    input reset,
    output reg [7:0] out
    );
    
    always@(posedge clk) begin
        if(reset)
            out <= 0;
        else if(en)
            out <= in;
    end
endmodule
