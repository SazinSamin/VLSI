module mult32bit(clk,rst,a,b,cout);
input [31:0]a,b;
inputclk,rst;
outputreg [63:0]cout;
reg [31:0]ai,bi;
always @(posedgeclk)begin
ai<=a;
	bi<=b;
if (~rst)
	cout<= 0;
else
	cout<=ai*bi;
end
endmodule
