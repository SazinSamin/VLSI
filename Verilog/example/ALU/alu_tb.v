module alu32bit_tb;
	reg [31:0]a,b;
	reg [1:0]sel;
	reg rst,clk;
	wire [31:0]cout;
	alu32bit inst1(cout,a,b,sel,clk,rst);
	
	initial begin
		a=0; b=0; sel=0; clk=0; rst=0;
		#10     rst=1; a=7; b=5;
		#20     a=7; b=5;
		#30     sel=1;  a=7; b=5;
		#40     sel=2;  a=7; b=5;
		#50     sel=3;  a=7; b=5;
		#2000 $finish;
	end
	
	always  #5 clk=~clk;

endmodule
