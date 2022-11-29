module half_adder(s, c, a, b);
	output reg s, c;
	input a, b;


	always @ ( * )	
	begin
		s = a ^ b;
		c = a & b;
	end
endmodule
