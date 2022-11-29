module fibo_tb;
	
	reg clk,rst;
	
	wire [31:0]v;
	
	fibo g(
		.clk(clk),
		.rst(rst),
		.v(v)
		);
	initial begin
		clk=0;rst=0;
			#2 rst=1;
			#4 rst=0;
			#2048 $finish;		
			end
		
		always #5 clk=~clk;
endmodule
