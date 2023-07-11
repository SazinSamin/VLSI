module comarator(a, b, clk, rst, gt, ls, eq);
	input a, b, clk, rst;
	output reg gt, ls, eq;
	
	always @ (posedge clk)
		begin
			if(!rst)
				begin
					gt <= 0;
					ls <= 0;
					eq <= 0;
				end
			else 
				begin
					gt <= (a > b) ? 1 : 0;
					ls <= (a < b) ? 1 : 0;
					eq <= (a == b ) ? 1 : 0;
				end
		end
endmodule
