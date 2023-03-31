module fadder32bit(sum,cout,a,b,cin,clk,rst);
	input [31:0] a,b;
	input cin,clk,rst;
	output reg[31:0] sum;
	output reg cout;
	reg [31:0] ai,bi;
	reg ci; 
	
	always @(posedge clk) 
		begin
			ai<=a;   bi<=b;
			ci<=cin;
			if(~rst)
				begin
					sum<=0;
					cout<=0;
				end
			else
				{cout,sum}<=ai+bi+ci;
		end
		
endmodule
