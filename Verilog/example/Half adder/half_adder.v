module half_adder( input [2:0] a, 
				input [2:0] b,
				input clk,
				output reg [4:0] sum,
				output reg cout
				);

	always @ (posedge clk)
		{cout, sum} =  a + b;
	
endmodule
