# Pairwise Bit Comparison Module

## Overview
This Verilog module compares all 25 pairwise combinations of five 1-bit inputs using replication and concatenation, and outputs 1 where the compared bits are equal.

## Module Functionality
- **Module Name:** `top_module`
- **Inputs:**  
  - `a, b, c, d, e` — five 1-bit input signals
- **Output:**  
  - `out [24:0]` — 25-bit output vector of XNOR comparisons

## Logic Explanation
- The first vector replicates the 5-bit group `{a,b,c,d,e}` five times:
  - `{5{a,b,c,d,e}}`
- The second vector replicates each input bit five times in sequence:
  - `{a,a,a,a,a, b,b,b,b,b, c,c,c,c,c, d,d,d,d,d, e,e,e,e,e}`
- The output is the bitwise XNOR of these two vectors:
  - `~(w1 ^ w2)`

## Use Case
This module is useful to understand pairwise signal comparison and efficient use of replication and concatenation in Verilog.

## File Included

| File Name       | Description                                  |
|------------------|----------------------------------------------|
| `top_module.v`   | Verilog code for pairwise bit comparison     |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Vector5](https://hdlbits.01xz.net/wiki/Vector5)
