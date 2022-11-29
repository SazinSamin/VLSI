`include "half_adder.v"
module Onefull_adder(s, co, a, b, ci);
	input a, b, ci;
	output s, co;
	wire x, y;
	
	half_adder h1(x, c, a, b);
	half_adder h2(s, y, x, ci);
	or (co, y, c);
	
endmodule
