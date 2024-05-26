module toggle_ff(
    input clk,
    input reset,
    input toggle,
    output reg out
);
    
    always@(posedge clk) begin
        if(reset)
            out <= 0;
        else if(toggle)
            out <= ~out;
    end



endmodule