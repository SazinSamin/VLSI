module mux21_tb;
		reg sel, i1, i0;
		wire y;
		
		mux21 inst (
				.sel(sel),
				.y(y),
				.i1(i1),
				.i0(i0)
		);
		
		initial begin
		$dumpfile("test_mux21.vcd");
		$dumpvars(0, mux21_tb);
				sel=0; i1=0; i0=0;
		#80	$finish;
		end
		
		always #10 i0 = ~i0;
		always #20 i1 = ~i1;
		always #40 sel = ~sel;
		
endmodule
