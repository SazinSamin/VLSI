`include "mux41.v"

module mux81(y, s0, s1, s2, i0, i1, i2, i3, i4, i5, i6, i7);
				output y;
//				input [7:0] i;
//				input [2:0] s;

				input i0, i1, i2, i3, i4, i5, i6, i7;
				input s0, s1, s2;
				
				mux41 m1 (w3, s0, s1, i0, i1, i2, i3);
				mux41 m2 (w4, s0, s1, i4, i5, i6, i7);
				mux21 m3 (y, s2, w4, w3);
endmodule
				
