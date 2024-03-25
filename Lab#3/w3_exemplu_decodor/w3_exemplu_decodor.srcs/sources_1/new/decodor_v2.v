
// varianta cu assign, urmand schema 

module decodor_v2
	(
		input wire [1:0] in,
		output wire [3:0] out 
	);
	
	// fiecare bit din iesire calculat independent
assign out[0] = ~in[0] & ~in[1];
assign out[1] = in[0] & ~in[1];
assign out[2] = ~in[0] & in[1];
assign out[3] = in[0] & in[1];

endmodule 