module com_tb;
	reg clk,rst;
	reg [31:0]a,b;
	wire Gt, Lt, Eq;

	com ut	(
		.clk(clk),
		.Gt(Gt),
		.Lt(Lt),
		.Eq(Eq),
		.a(a),
		.b(b),
		.rst(rst)
		);
		
	


	initial 
		begin
		clk=0;
		 a = 0;

  		 b = 0;
		rst=0;
		#2 rst=1;
		#4 rst=0;

		

		
		
		#4048 $finish;
		end
 		
	always #2 clk=~clk;
	always #4 a=~a;
	always #8 b=~b;

endmodule
