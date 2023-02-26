module jcounter(out, rst, clk);
	parameter N = 4;
	input rst, clk;
	output reg[N-1:0] out;
	integer i;
	
	always @ (posedge clk) begin
		if(!rst)
			out <= 1;
		else begin
			out[N-1] = out[0];
			for(i = 0; i < N-1; i = i + 1) begin
				out[i] <= out[i+1];
			end
		end
	end
	
endmodule
