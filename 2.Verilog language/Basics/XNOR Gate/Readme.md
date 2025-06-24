# XNOR Gate Module

## Overview
This Verilog module implements a 2-input XNOR gate using the bitwise XOR (`^`) and negation (`~`) operators. The output is high (`1`) when both inputs are the same (either `0,0` or `1,1`).

## Module Functionality
- **Module Name:** `top_module`
- **Inputs:**  
  - `a`, `b` — 1-bit input signals  
- **Output:**  
  - `out = ~(a ^ b)` — logical XNOR of `a` and `b`

## Use Case
This module reinforces understanding of compound logic expressions and is commonly used in basic Verilog and digital logic exercises.

## File Included

| File Name       | Description                       |
|------------------|-----------------------------------|
| `top_module.v`   | Verilog code for XNOR gate logic  |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[XNOR Gate](https://hdlbits.01xz.net/wiki/Xnorgate)
