module cntr8bit(count,rst,clk);
input rst,clk;
output reg [7:0]count;
always  @(posedge clk)  begin
if(~rst)
count<=0;
else
count<=count+1;
end
endmodule
