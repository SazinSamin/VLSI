module fadder32bit(sum,cout,a,b,cin,clk,rst);
	parameter n = 32;
	input [n-1:0]a,b;
	input cin,clk,rst;
	output reg[n-1:0]sum;
	output reg cout;
	reg [n-1:0]ai,bi;
	reg ci;

	always @(posedgeclk)begin
		ai<=a;   bi<=b;
		ci<=cin;
	if(~rst)begin
		sum<=0;
		cout<=0;
	end
	else
		{cout,sum}<=ai+bi+ci;
	end
endmodule
