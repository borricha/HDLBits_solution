module top_module (
    input [7:0] in,
    output [31:0] out );//
	
    assign out = { {24{in[7]}}, in};
    // in[7], not in[0]n is msb
    // assign out = { replicate-sign-bit , the-input };

endmodule
