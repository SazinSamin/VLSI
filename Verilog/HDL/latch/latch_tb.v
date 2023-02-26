module latch_tb;
	reg d, rst, en;
	wire q;
	
	latch uut(
		.q(q),
		.d(d),
		.rst(rst),
		.en(en)
	);
	
	initial begin
	$dumpfile("dump.vcd");
	$dumpvars(1, latch_tb);
		d = 0; rst = 0; en = 0;
	#5 rst = 1;
	#10 en = 1;
	#15 d = 1;
	#20 d = 0;
	#30 $finish;
	end	
	
endmodule
