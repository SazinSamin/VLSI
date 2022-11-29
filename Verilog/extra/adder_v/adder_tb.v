module adder_tb;
	reg [31:0]a,b;
	reg cin,clk,rst;
	wire [31:0]sum;
	wire cout;
	
	adder inst(sum,cout,a,b,cin,clk,rst);
	initial begin
	$dumpfile("test_adder.vcd");
	$dumpvars(0, adder_tb);
		a=0;b=0;cin=0;clk=0;rst=0;
	#10 rst=1;
	#21000  $finish;	
	end

	always #10 clk=~clk;
	always #20 a=a+1;
	always #40 b=b+1;
	always #80 cin=~cin;
endmodule
