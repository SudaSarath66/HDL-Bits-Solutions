# NOR Gate Module

## Overview
This Verilog module implements a basic 2-input NOR gate using the bitwise OR (`|`) and negation (`~`) operators. The output is high (`1`) only when both inputs are low (`0`).

## Module Functionality
- **Module Name:** `top_module`
- **Inputs:**  
  - `a`, `b` — 1-bit input signals  
- **Output:**  
  - `out = ~(a | b)` — logical NOR of `a` and `b`

## Use Case
This module is commonly used in foundational digital logic design to illustrate compound logic operations and truth table behavior in Verilog.

## File Included

| File Name       | Description                     |
|------------------|---------------------------------|
| `top_module.v`   | Verilog code for NOR gate logic |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Nor gate](https://hdlbits.01xz.net/wiki/Nor_gate)
