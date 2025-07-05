// Full adder module
module full_adder(input a, input b, input cin, output sum, output cout);
    assign sum  = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);
endmodule

// Top module using 100 full adder instances
module top_module( 
    input  [99:0] a, b,
    input         cin,
    output [99:0] sum,
    output [99:0] cout
);

    wire [100:0] carry;           
    assign carry[0] = cin;

    genvar i;
    generate
        for (i = 0; i < 100; i = i + 1) begin : fa_gen
            full_adder fa_inst (
                .a    (a[i]),
                .b    (b[i]),
                .cin  (carry[i]),
                .sum  (sum[i]),
                .cout (carry[i+1])
            );
            assign cout[i] = carry[i+1];  
        end
    endgenerate

endmodule

