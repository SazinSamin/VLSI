module jkff_tb;
	wire q;
	reg j, k , clk;
	
	jkff uut(
		.q(q),
		.j(j),
		.k(k),
		.clk(clk)
	);
	
	initial begin
	$dumpfile("dump.vcd");
	$dumpvars(1, jkff_tb);
		j  = 0; k = 0; clk = 0;
		
		#10   j <= 0;
			k <= 1;
		#20 j <= 1;
			k <= 0;
		#30 j <= 1;
			k <= 1;
	#200 $finish;
	end
	
	always #2 clk = ~clk;

endmodule
	
