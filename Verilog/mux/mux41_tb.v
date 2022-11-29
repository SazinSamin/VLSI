module mux41_tb;
		reg s0, s1, i0, i1, i2, i3;
		wire y;
		
		
		mux41 inst (
				.s0(s0),
				.s1(s1),
				.y(y),
				.i0(i0),
				.i1(i1),
				.i2(i2),
				.i3(i3)
		);
		
		initial begin
		$dumpfile("test_mux41.vcd");
		$dumpvars(0, mux41_tb);
				s0 = 0; s1 = 0; i0 = 0; i1 = 0; i2 = 0; i3 = 0;
		#320	$finish;
		end
		
		always #5 i0 = ~i0;
		always #10 i1 = ~i1;
		always #20 i2 = ~i2;
		always #40 i3 = ~i3;
		always #80 s0 = ~s0;
		always #160 s1 = ~s1;
		
endmodule
