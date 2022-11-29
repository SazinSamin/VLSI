module mux81_tb;
		reg [0:7] i;
		reg [2:0] s;
		wire y;
		
		
		mux81 inst (
				.y(y),
				.i(i),
				.s(s)
		);
		
		initial begin
		$dumpfile("test_mux81.vcd");
		$dumpvars(0, mux81_tb);
					s[0] = 0; s[1] = 0; s[2] = 0; i[0] = 0; i[1] = 0; i[2] = 0; i[3] = 0; i[4] = 0; i[5] = 0; i[6] = 0; i[7] = 0;
		#2048	$finish;
		end
		
//		genvar idx;
//		integer tm = 2;
//		for(idx = 0; idx < 10; idx = idx + 1) begin
//			always #tm i[idx] = ~i[idx];
//			assign tm = tm * 2;
//		end
		
		always #1 i[0] = ~i[0];
		always #2 i[1] = ~i[1];
		always #4 i[2] = ~i[2];
		always #8 i[3] = ~i[3];
		always #16 i[4]= ~i[4];
		always #32 i[5] = ~i[5];
		always #64 i[6] = ~i[6];
		always #128 i[7] = ~i[7];
		always #256 s[0] = ~s[0];
		always #512 s[1] = ~s[1];
		always #1024 s[2] = ~s[2];
		
endmodule

