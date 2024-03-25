
// varianta cu assign comportamental 

module decodor_v6
	(
		input wire [1:0] in,
		output wire [3:0] out 
	);

assign out = 1 << in; 
	// prin shiftare
	// 1<<1 == 1 == 4'b0001; 
	// 1<<2 == 2 == 4'b0010; 
	// 1<<2 == 4 == 4'b0100; 
	// 1<<3 == 8 == 4'b1000; 

endmodule 