module lsr_tb;
	parameter N = 4;
	wire[N-1:0]  out;
	reg d, clk, rst;
	
	lsr uut(
		.out(out),
		.d(d),
		.clk(clk),
		.rst(rst)
	);
	
	initial begin
	$dumpfile("dump.vcd");
	$dumpvars(0, lsr_tb);
		{d, clk, rst} <= 0;
	#200 $finish;
	end
	
	always #10 clk = ~clk;
	always #10 d = d + 1;

endmodule
