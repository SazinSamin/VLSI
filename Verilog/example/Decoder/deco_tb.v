module decode32_tb;
	reg[4:0]a;
	reg clk,rst;
	wire[31:0]out;
	integer i;

	decode32 ut	(
			.clk(clk),
			.a(a),
			.rst(rst),
			.out(out)
			);

		initial begin
				clk=0; a=0; rst=0;
				#10 rst=1;
				#2500 $finish;
			end
		initial 
		begin
		for(a=0;a<32;a=a+1)
		#20; 
		end
		always #10 clk=~clk;
		//always #20 a=a[i];
endmodule
