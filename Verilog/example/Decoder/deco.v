module decode32 (out,a,clk,rst);
	input[4:0]a;
	input clk,rst;
	output reg[31:0]out;
		reg[4:0]ai;
	integer i;

	always@(posedge clk)
		begin
			ai<=a;
	if(~rst)
		begin
			out<=0;
		end
	else
		
		for(i=0;i<32;i=i+1)
			begin	
				out[i]=(ai==i)?1'b1:1'b0;
			end
		end
endmodule
