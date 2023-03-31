module lsr(out, d, clk, rst);
	parameter N = 4;
	input d, clk, rst;
	output reg[N-1:0] out;
	
	always @ (posedge clk)
		begin
			if(~rst)
				out <= 0;
			else
				out <= {out[2:0], d};
		end

endmodule
