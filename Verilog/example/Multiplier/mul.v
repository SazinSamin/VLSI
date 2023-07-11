module mulNbit(a, b, clk, cin, rst, sum, cout);
	parameter N = 32;
	input [N-1:0] a, b;
	input cin, clk, rst;
	output reg [N-1:0] sum;
	output reg cout;
	
	always @ (posedge clk)
	begin
		if(~rst)
			begin
				sum <= 0;
				cout <= 0;
			end
		else 
			begin
				{cout, sum} = a * b;
			end
	end
endmodule
