module half_adder( input [2:0] a, 
				input [2:0] b,
				output reg [4:0] sum,
				output reg cout
				);

	always @ (*)
		{cout, sum} =  a + b;
	
endmodule
