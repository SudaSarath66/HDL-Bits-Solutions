module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//

    // assign { ... } = { ... };
    wire [31:0] temp;
    assign temp= { a,b,c,d,e,f,2'b11};
    assign {w,x,y,z}= temp;
endmodule
