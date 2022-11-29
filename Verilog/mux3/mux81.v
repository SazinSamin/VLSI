module mux81(output reg y, input [0:7] i, input[2:0] s);
				
				always @ ( * )
					if(!s[2] && !s[1] && !s[0])
						y <= i[0];
					else if(!s[2] && !s[1] && s[0])
						y <= i[1];
					else if(!s[2] && s[1] && !s[0])
						y <= i[2];
					else if(!s[2] && s[1] && s[0])
						y <= i[3];
					else if(s[2] && !s[1] && !s[0])
						y <= i[4];
					else if(s[2] && !s[1] && s[0])
						y <= i[5];
					else if(s[2] && s[1] && !s[0])
						y <= i[6];
					else
						y <= i[7];
				
endmodule
				
