module nshift(out, d, dir, clk, rst, en);
	parameter N = 4;
	input d, clk, rst, en, dir;
	output reg[N-1:0] out;
	
	always @ (posedge clk) begin
		if(!rst)
			out <= 0;
		else begin
			if(en)
				case(dir)
					0: out <= {out[N-2:0], d};
					1: out <= {d, out[N-1:1]};
				endcase
			else 
				out <= out;
		end
	end
	
endmodule
