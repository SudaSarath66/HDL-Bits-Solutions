module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
);

    assign s = a + b;

    // Overflow occurs when a and b have the same sign,
    // but the result has the opposite sign
    assign overflow = (~a[7] & ~b[7] & s[7]) |  // positive + positive = negative (overflow)
                      ( a[7] &  b[7] & ~s[7]);  // negative + negative = positive (overflow)

endmodule
