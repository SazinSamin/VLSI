// https://www.youtube.com/watch?v=zz2Pa0krsLU
// here {cout, s} s corresponding to sum which is 4 bit from lsb, and cout will be 5th bit(msb)
// as this a + b + cin produce result more than 4 bit as there is carry out


module fa4bit(cin, a, b, cout, s)
  paramter n = 4;
  input [n-1 : 0] a, b;
  input cin;
  output [n-1 : 0] s;
  output cout;
  
  always @ (a, b, cin)
  begin
    {cout, s} = a + b + cin;
  end
  
endmodule
