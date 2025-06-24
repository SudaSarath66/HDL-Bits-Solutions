# AND-OR Combination Module

## Overview
This Verilog module performs a combination of logic operations using AND, OR, and NOT gates. It takes four inputs, computes two AND operations, then ORs their results, and finally outputs both the result and its complement.

## Module Functionality
- **Module Name:** `top_module`
- **Inputs:**  
  - `a`, `b`, `c`, `d` — 1-bit input signals  
- **Outputs:**  
  - `out` = `(a & b) | (c & d)`  
  - `out_n` = `~out`

## Use Case
This module demonstrates structured logic design using intermediate wires. It is a typical beginner-level HDLBits problem used to teach logic combination and wire assignment in Verilog.

## File Included

| File Name       | Description                            |
|------------------|----------------------------------------|
| `top_module.v`   | Verilog source code for AND-OR logic   |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Wire-decl](https://hdlbits.01xz.net/wiki/Wire_decl)
