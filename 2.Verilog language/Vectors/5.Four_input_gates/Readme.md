# 4-Input Logic Gate Module

## Overview
This Verilog module performs basic 4-input logic operations—AND, OR, and XOR—on a 4-bit input vector. It demonstrates how Verilog’s **reduction operators** are used to apply a logic operation across all bits of a vector.

## Module Functionality
- **Module Name:** `top_module`
- **Input:**  
  - `in[3:0]` — a 4-bit input vector
- **Outputs:**  
  - `out_and = &in` — logical AND of all bits  
  - `out_or  = |in` — logical OR of all bits  
  - `out_xor = ^in` — logical XOR of all bits

## Operator Explanation
- `&` (Reduction AND): Returns 1 if **all** bits of `in` are 1  
- `|` (Reduction OR): Returns 1 if **any** bit of `in` is 1  
- `^` (Reduction XOR): Returns 1 if an **odd number** of bits in `in` are 1

## Use Case
This module is useful in learning how to perform logic reductions across vectors, a common task in digital systems for parity checks, flag evaluation, and condition aggregation.

## File Included

| File Name       | Description                                |
|------------------|--------------------------------------------|
| `top_module.v`   | Verilog code for 4-input logic gates       |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Gates4](https://hdlbits.01xz.net/wiki/Gates4)
