module sub32bit(clk,rst,a,b,cout,sub);
input [31:0]a,b;
input clk,rst;
output reg [31:0]sub;
output reg cout;
reg [31:0]ai,bi;
	always @(posedge clk) begin
	ai<=a;
	bi<=b;
if (~rst)
	{sub,cout}<= 0;
else
	{sub,cout}<=ai-bi;
end
endmodule
