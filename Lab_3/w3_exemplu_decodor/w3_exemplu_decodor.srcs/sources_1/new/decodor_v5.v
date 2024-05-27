
// varianta cu always cu case

module decodor_v5
	(
		input wire [1:0] in,
		output reg [3:0] out 
	);

always@(*)
begin
	case(in) // functioneaza ca switch/case din c/c++; sintaxa usor diferita
		0: // if in == 0
			begin
			out = 1;
			end
		2'd1: // if in == 1;	2'd1 se traduce: pe 2 biti, in baza zece (eng: decimal, "d"), valoarea 1
			begin	// pt "0" de mai sus: daca nu se pune nimic se considera in baza zece.
			out = 2;
			end
		2'b10: // if in == 2;	scris in binar "b", 2'b10 => adica valoarea 2 pe 2 biti 
			begin
			out = 4;
			end
		2'h3: // if in == 3;	scris in hexa (baza 16 "h"), fiind numar mic, nu se vede diferenta fata de zecimal.
			begin
			out = 8;
			end
		default: // daca in == un caz netrata; 
			begin // aici inutil pt ca am tratat toate cazurile posibile; pus ca exemplu de sintaxa 
			out = 0;
			end
	endcase // orice "case" se inchide cu "endcase"

end 



endmodule 