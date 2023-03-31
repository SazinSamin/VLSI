module encoder_shift(input [1:0] in, output reg [3:0] out);

always @ (in) begin
    out = (1 << in);
end

endmodule
