module alu32bit(cout,a,b,sel,clk,rst);
	input [31:0]a,b;
	input [1:0]sel;
	input clk,rst;
	output reg[31:0]cout;
	
	always @(posedgeclk) begin
		if(~rst)
			cout<=0;
		else begin
			case (sel)
				0: cout<= a & b;
				1: cout<= a | b;
				2: cout<= a>>1;
				3: cout<= a<<1;
			endcase
		end
	end

 endmodule
