module pattern_tb;
	reg i, clk, rst;
	wire o;

	pattern uut(
		.o(o),
		.i(i),
		.rst(rst),
		.clk(clk)
	);
	
	initial begin
		$dumpfile("dump.vcd");
		$dumpvars(0, pattern_tb);
		i = 0; clk = 0; rst = 0;
	#1000 $finish;
	end
	
	always #20 clk = ~clk;
	always begin
		#20 i = 1;
		#20 i = 1;
		#20 i = 0;
		#20 i = 1;
		#20 i = 0;
		#20 i = 1;
		#20 i = 1;
		#20 i = 0;
		#20 i = 1;
		#20 i = 0;
	end
	


endmodule
	
