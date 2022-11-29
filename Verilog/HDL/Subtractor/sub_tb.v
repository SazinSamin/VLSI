module sub32bit_tb;
reg [31:0]a,b;
regclk,rst;
wire [31:0]sub;
wirecout;
sub32bit stage1(clk,rst,a,b,cout,sub);
initial begin
clk=0; rst=0; a=0;b=0;
#10 rst =1;
#3000 $finish;
end
always #10 clk=~clk;
always #20 a=a+1;
always #40 b=b+1;
endmodule
