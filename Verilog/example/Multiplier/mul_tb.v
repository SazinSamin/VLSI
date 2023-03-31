Test_bench:
module mult32bit_tb;
reg [31:0]a,b;
regclk,rst;
wire [63:0]cout;
mult32bit stage1(clk,rst,a,b,cout);
initial begin
clk = 0; rst = 0; a=0;b=0;
#20 rst =1 ;
#3000 $finish;
end
always #5 clk=~clk;
always #10 a=a+1;
always #20 b=b+1;
endmodule
