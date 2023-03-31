module pencoder_tb;
	reg[7:0] a, b, c, d;
	reg[1:0] sel;
	wire[7:0] out;
	integer i;	
	
	pencoder uut(
		.a(a),
		.b(b),
		.c(c),
		.d(d),
		.sel(sel),
		.out(out)
	);
	
	initial begin
	$dumpfile("dump.vcd");
	$dumpvars(1, pencoder_tb);
	
	a = 1; b = 2; c = 3; d = 4; sel = 0;

	for(i = 1; i < 4; i = i + 1) 
	#10	sel <= i;
	
	#100 $finish;
	end
	
	
endmodule
