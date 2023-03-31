module shift_tb;
	reg C,SI;
	wire S0;
    wire [15:0]tmp;

shift g(
		.C(C),
		. SI(SI),
		. SO(S0),
		.tmp(tmp)
		);
initial begin 
	C=0;SI=0;
	#10 SI=1;
	#10 SI=0;
	#1024 $finish;
end
always #5 C=~C;

endmodule
