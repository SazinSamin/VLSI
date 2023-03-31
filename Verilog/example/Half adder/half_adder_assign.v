module half_adder(a, b, clk, sum, cout);
    input a, b, clk;
    output sum, cout;   
    
    assign sum = a ^ b;
    assign cout = a & b;
    
endmodule
