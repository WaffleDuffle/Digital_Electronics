
module ram_2048x8b(
    input clk,
    input we,
    input [10:0] addr_r,
    input [10:0] addr_w,
    input  [7:0] data_w,
    output [7:0] data_r
    );
    
    reg [10:0] memorie_meu [7:0];
    
    assign data_r = memorie_meu[addr_r];
    
    always@(posedge clk) begin
        if(we)  
            memorie_meu[addr_w] <= data_w;
    end
    
endmodule
