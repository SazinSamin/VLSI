module sub32bit(clk,rst,a,b,cout,sub);
input [31:0]a,b;
inputclk,rst;
outputreg [31:0]sub;
outputregcout;
reg [31:0]ai,bi;
always @(posedgeclk) begin
	ai<=a;
	bi<=b;
if (~rst)
	{sub,cout}<= 0;
else
	{sub,cout}<=ai-bi;
end
endmodule
