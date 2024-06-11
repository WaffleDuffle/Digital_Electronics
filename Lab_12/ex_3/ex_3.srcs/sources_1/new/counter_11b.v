
module counter_11b(
    input en,
    input reset,
    input clk,
    output reg [10:0] out
    );
    
    always@(posedge clk) begin
        if(reset)  
            out <= 0;
        else if(en)
            out <= out + 1;
    end
endmodule
