adder_8bit_rtl(clk,rst,a,b,cin,s,cout);
input [7:0]a,b;
inputcin,clk,rst;
outputregcout;
outputreg [7:0]s;
reg [7:0]A,B;
reg CI;
always @(posedgeclk) begin
A<=a;
B<=b;
CI<=cin;
if (~rst) begin
s <= 0;
cout<= 0;
end
else
{cout,s} <= A+B+CI;
end
endmodule
