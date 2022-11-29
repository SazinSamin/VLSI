`include "mux21.v"
module mux41(y, s0, s1, i0, i1, i2, i3);
		output y;
		input s0, s1, i0, i1, i2, i3;
		
		mux21 m1 (w3, s0, i1, i0);
		mux21 m2 (w4, s0, i3, i2);
		mux21 m3 (y, s1, w4, w3);
		
endmodule
