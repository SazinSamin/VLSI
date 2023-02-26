module latch(q, d, rst, en);
	input d, rst, en;
	output reg q;
	
	always @ (d or rst or en) begin
		if(!rst)
			q <= 0;
		else begin
			if(en)
				q <= d;
		end
	end
	
endmodule
