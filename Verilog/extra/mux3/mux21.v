module mux21(y, sel, i1, i0);
		output reg y;
		input sel, i1, i0;
		
		always @ (sel, i1, i0)
				if(sel)
					y <= i1;
				else 
					y <= i0;
endmodule
