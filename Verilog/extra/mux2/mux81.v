module mux81(y, s2, s1, s0, i0, i1, i2, i3, i4, i5, i6, i7);
				output reg y;
				input s0, s1, s2, i7, i6, i5, i4, i3, i2, i1, i0;
				
				always @ ( * )
					if(!s0 && !s1 && !s2)
						y <= i0;
					else if(!s0 && !s1 && s2)
						y <= i1;
					else if(!s0 && s1 && !s2)
						y <= i2;
					else if(!s0 && s1 && s2)
						y <= i3;
					else if(s0 && !s1 && !s2)
						y <= i4;
					else if(s0 && !s1 && s2)
						y <= i5;
					else if(s0 && s1 && !s2)
						y <= i6;
					else
						y <= i7;
				
endmodule
				
