`timescale 1ns / 1ps

module testbench(); 

reg a_tb;	
reg b_tb;	
wire c_tb;	



initial begin 
	#10		
	a_tb = 0;		
	b_tb = 0;
	#10		
	a_tb = 1;
	b_tb = 0;
	#10
	a_tb = 0;
	b_tb = 1;
	#10
	a_tb = 1;
	b_tb = 1;
	#10
	a_tb = 0;
	b_tb = 0;
	
	#20 $stop();	
end 
    top DUT(.a(a_tb), .b(b_tb), .c(c_tb));
endmodule