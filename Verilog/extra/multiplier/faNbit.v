module faNbit (s, cout, cin, x, y);
		parameter n = 32;
		input cin;
		input [n-1:0] x, y;
		output reg cout;
		output reg[n-1:0] s;
		
		always @ (x, y, cin)
		begin
			{cout, s} = x + y + cin;
		end
endmodule
