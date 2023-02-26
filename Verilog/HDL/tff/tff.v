module tff(q, t, clk, rst);
	input t, clk, rst;
	output reg q;
	
	always @ (posedge clk) begin
		if(!rst)
			q <= 0;
		else begin
			if(t)
				q <= ~q;
			else
				q <= q;
		end
	end
	
endmodule	
