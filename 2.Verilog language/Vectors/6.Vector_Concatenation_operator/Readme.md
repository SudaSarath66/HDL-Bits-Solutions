# Vector Concatenation and Splitting Module

## Overview
This Verilog module combines six 5-bit input vectors and two constant bits (`2'b11`) into a 32-bit vector, then splits the result into four 8-bit output vectors using concatenation.

## Module Functionality
- **Module Name:** `top_module`
- **Inputs:**  
  - `a, b, c, d, e, f [4:0]` — six 5-bit input vectors
- **Outputs:**  
  - `w, x, y, z [7:0]` — four 8-bit output vectors

## Logic Explanation
- The inputs are concatenated with two 1’s:
  - `{a, b, c, d, e, f, 2'b11}`
- The 32-bit result is split into four 8-bit outputs:
  - `{w, x, y, z}`

## Use Case
This module helps practice vector concatenation and splitting, useful in bus construction and signal alignment.

## File Included

| File Name       | Description                                      |
|------------------|--------------------------------------------------|
| `top_module.v`   | Verilog code for vector packing and unpacking    |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Vector3](https://hdlbits.01xz.net/wiki/Vector3)
