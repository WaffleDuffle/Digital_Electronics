
// varianta cu assign, cu "?" 

module decodor_v3
	(
		input wire [1:0] in,
		output wire [3:0] out 
	);

// operatorul "?": identic c/c++; (conditie) ? (if_true) : (if_flase);

assign out = (in==0) ? // if in == 0 
				1 : // if true: out = 1 
				(in==1) ? // else, verifica alt if. 
					2 : // if in !=0 si in == 1
					(in==2) ?
						4 :
						8; // last case in==3

endmodule 