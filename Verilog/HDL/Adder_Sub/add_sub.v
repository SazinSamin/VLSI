module adder_sub(s, cout, a, b, cin, cnt, clk, rst);
	parameter n = 32;
	input cin, clk, rst;
	input cnt;
	input [n-1:0] a, b;
	output reg cout;
	output reg [n-1:0] s;
	reg [31:0] ai,bi;
	reg ci;

	always @ (posedge clk)
	begin
		ai <= a;
		bi <= b;
		ci <= cin;
		if(~rst)
			s <= 0;
			cout <= 0;
		if(cnt == 0)
			{cout, s} <= ai + bi + ci;
		else if(cnt == 1)
			{cout, s} <= ai - bi - ci;
	end
endmodule
