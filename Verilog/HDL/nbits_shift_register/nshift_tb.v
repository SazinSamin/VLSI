module nshift_tb;
	parameter N = 4;
	reg d, clk, rst, en, dir;
	wire [N-1:0] out;
	
	nshift uut(
		.out(out),
		.d(d),
		.clk(clk),
		.rst(rst),
		.en(en),
		.dir(dir)
	);
	
	initial begin
	$dumpfile("dump.vcd");
	$dumpvars(1, nshift_tb);
		rst = 0; clk = 0; en = 0; dir = 0;
	#10 rst = 1;
	#15 en = 1; d = 1;
	#20 dir = 1; d = 1;
	#25 en = 0;
	
	#500 $finish; 
	
	
	end
	
	always #2 clk = ~clk;

endmodule
