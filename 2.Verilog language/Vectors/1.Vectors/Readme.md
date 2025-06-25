# 3-Bit Vector Split Module

## Overview
This Verilog module demonstrates the use of a 3-bit vector as an input, which is assigned directly to an output vector and also split into three separate 1-bit output signals. This reinforces concepts of vector declaration and bit-level access in Verilog.

## Module Functionality
- **Module Name:** `top_module`
- **Input:** `vec[2:0]` — a 3-bit input vector  
- **Outputs:**
  - `outv[2:0]` — direct copy of `vec`  
  - `o2` = `vec[2]`  
  - `o1` = `vec[1]`  
  - `o0` = `vec[0]`

## Use Case
This module is designed to help learners understand how to work with vectors in Verilog, including part-select access and vector replication. It demonstrates both complete vector assignment and bit extraction.

## File Included

| File Name       | Description                          |
|------------------|--------------------------------------|
| `top_module.v`   | Verilog source code for vector splitting |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Vector0](https://hdlbits.01xz.net/wiki/Vector0)
