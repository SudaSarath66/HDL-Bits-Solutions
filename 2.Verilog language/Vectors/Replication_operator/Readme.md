# Bit Reversal Module

## Overview
This Verilog module takes an 8-bit input vector and reverses the order of its bits using the concatenation operator.

## Module Functionality
- **Module Name:** `top_module`
- **Input:**  
  - `in [7:0]` — 8-bit input vector
- **Output:**  
  - `out [7:0]` — 8-bit output vector with reversed bit order

## Logic Explanation
- The output is assigned as:
  - `{in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7]}`

## Use Case
This module helps practice bit reordering using concatenation, useful in data formatting and communication protocols.

## File Included

| File Name       | Description                         |
|------------------|-------------------------------------|
| `top_module.v`   | Verilog code for 8-bit bit reversal |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Vector4](https://hdlbits.01xz.net/wiki/Vector4)
