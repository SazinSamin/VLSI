module dff_tb;
	reg d, clk, rst;
	wire q;
	
	dff uut(
		.q(q),
		.d(d),
		.clk(clk),
		.rst(rst)
	);
	
	initial begin
	$dumpfile("dump.vcd");
	$dumpvars(1, dff_tb);
		d = 0; clk = 0; rst = 0;
	#15	d <= 1;
	#10 rst <= 1;
	#20 d <= 0;
	#30 d <= 1;
	#40 $finish;
	end
	
	always #2 clk = ~clk;
endmodule
