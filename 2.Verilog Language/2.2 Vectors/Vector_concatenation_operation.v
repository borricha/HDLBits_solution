module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//
	
    wire [31:0] temp = {a,b,c,d,e,f,2'b11};
    assign w = temp[31:24];
    assign x = temp[23:16];
    assign y = temp[15:8];
    assign z = temp[7:0];
    
    // assign { ... } = { ... };

endmodule