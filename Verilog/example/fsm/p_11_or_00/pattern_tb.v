module pattern_tb;
	reg[4:0] d;
	reg clk_tb, reset_tb, inbits_tb;
	wire detect;
	
	initial begin
	$dumpfile("dump.vcd");
	$dumpvars(1, pattern_tb);
		clk_tb = 0;
		reset_tb = 0;
		inbits_tb = 0;
	end
	
	initial begin
		reset_tb = 1'b1;
	#15 reset_tb = 1'b0;
	end
	
	always begin
	#10 clk_tb = ~clk_tb;
	#1000 $finish;
	end
	
	always begin
	#10 inbits_tb = 1;
	#10 inbits_tb = 0;
	#10 inbits_tb = 1;
	#10 inbits_tb = 1;
	#10 inbits_tb = 0;
	#10 inbits_tb = 0;
	#10 inbits_tb = 1;
	end
	
	pattern uut(
		.clk(clk_tb),
		.inbits(inbits_tb),
		.detect(detect_tb),
		.reset(reset_tb)
	);
	
endmodule
	
