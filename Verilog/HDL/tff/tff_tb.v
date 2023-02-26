module tff_tb;
	reg t, clk, rst;
	wire q;
	
	tff uut(
		.q(q),
		.t(t),
		.clk(clk),
		.rst(rst)
	);
	
	initial begin 
	$dumpfile("dump.vcd");
	$dumpvars(1, tff_tb);
		t = 0; clk = 0; rst = 0;
	#5 t = 0; 
	#10 rst = 1;
	#15 t = 1;
	#20 $finish;
	end
	
	always #5 clk = ~clk;
	
	
endmodule
