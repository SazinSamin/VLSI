module main(input d, input rstn, input clk, output reg q);
    always @ (posedge clk) begin
        if(!rstn)
            q <= 0;
        else
            q <= d;
    end
endmodule



module main(d, rst, clk, q);
    input d, rst, clk;
    output reg q;
    always @ (posedge clk) begin
        if(!rst)
            q <= 0;
        else
            q <= d;
    end
endmodule
