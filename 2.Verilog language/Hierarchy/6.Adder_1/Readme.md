# 32-Bit Adder Using Two 16-Bit Adders

## Overview
This Verilog module constructs a 32-bit ripple-carry adder using two instances of a provided `add16` module. The design splits the 32-bit addition into lower and upper 16-bit segments and handles carry propagation internally.

## Module Functionality
- **Module Name:** `top_module`
- **Inputs:**  
  - `a [31:0]` — 32-bit input operand  
  - `b [31:0]` — 32-bit input operand
- **Output:**  
  - `sum [31:0]` — 32-bit sum of `a` and `b`

## Logic Explanation
- Two `add16` modules are instantiated:
  - The **first** computes `a[15:0] + b[15:0] + 0`, producing `sum[15:0]` and carry `car_low`.
  - The **second** computes `a[31:16] + b[31:16] + car_low`, producing `sum[31:16]`.
- Final output is the concatenation of both 16-bit results.

## Use Case
This module demonstrates hierarchical design and how smaller arithmetic units can be used to construct larger operations. It's a foundational concept in building arithmetic logic units (ALUs).

## File Included

| File Name       | Description                              |
|------------------|------------------------------------------|
| `top_module.v`   | Verilog code for 32-bit adder using add16 |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Module_add](https://hdlbits.01xz.net/wiki/Module_add)
