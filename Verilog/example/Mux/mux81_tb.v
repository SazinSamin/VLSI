module mux81_tb;
		reg s0, s1, s2, i0, i1, i2, i3, i4, i5, i6, i7;
		wire y;
		
		
		mux81 inst (
				.s0(s0),
				.s1(s1),
				.s2(s2),
				.y(y),
				.i0(i0),
				.i1(i1),
				.i2(i2),
				.i3(i3),
				.i4(i4),
				.i5(i5),
				.i6(i6),
				.i7(i7)
		);
		
		initial begin
		$dumpfile("test_mux81.vcd");
		$dumpvars(0, mux81_tb);
					s0 = 0; s1 = 0; s2 = 0; i0 = 0; i1 = 0; i2 = 0; i3 = 0; i4 = 0; i5 = 0; i6 = 0; i7 = 0;
		#2048	$finish;
		end
		
		always #1 i0 = ~i0;
		always #2 i1 = ~i1;
		always #4 i2 = ~i2;
		always #8 i3 = ~i3;
		always #16 i4= ~i4;
		always #32 i5 = ~i5;
		always #64 i6 = ~i6;
		always #128 i7 = ~i7;
		always #256 s0 = ~s0;
		always #512 s1 = ~s1;
		always #1024 s2 = ~s2;
		
endmodule

