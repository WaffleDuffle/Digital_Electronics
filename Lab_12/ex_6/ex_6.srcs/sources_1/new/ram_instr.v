module ram_instr(
    input clk,
    input save,
    input [3:0] rd_addr,
    input [3:0] wr_addr,
    input [3:0] wr_data,
    output [3:0] rd_data
);

    reg [3:0] memorie_meu[15:0];
    
    assign rd_data = memorie_meu[rd_addr];
    
    always@(posedge clk) begin
        if(save)
            memorie_meu[wr_addr] = wr_data;
    end



endmodule