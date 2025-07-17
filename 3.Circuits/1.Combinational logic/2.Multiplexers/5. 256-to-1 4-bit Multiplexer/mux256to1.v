module top_module (
    input  [1023:0] in,  // 256 * 4 = 1024 bits
    input  [7:0]    sel, // 8-bit selector for 256 options
    output [3:0]    out  // 4-bit output
);
    
  assign out = in[ (sel * 4) +: 4 ]; // Select 4 bits starting at sel*4  
endmodule
