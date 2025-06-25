# Vector Logic Operations Module

## Overview
This Verilog module takes two 3-bit input vectors and performs:
- a **bitwise OR** operation,
- a **logical OR** operation, and
- a **bitwise NOT** operation on both vectors, concatenated into a 6-bit result.

It highlights the differences between bitwise and logical operators when working with vectors and demonstrates vector manipulation using concatenation.

## Module Functionality
- **Module Name:** `top_module`
- **Inputs:**  
  - `a[2:0]` — first 3-bit input  
  - `b[2:0]` — second 3-bit input
- **Outputs:**  
  - `out_or_bitwise[2:0] = a | b` — bitwise OR  
  - `out_or_logical = a || b` — logical OR (1 if either vector is non-zero)  
  - `out_not[5:0] = { ~b[2:0], ~a[2:0] }` — 6-bit vector, upper half is inverted `b`, lower half is inverted `a`

## Explanation of Operators
- **Bitwise OR (`|`)**: Applies OR to each corresponding bit, generating a 3-bit result.
- **Logical OR (`||`)**: Evaluates the entire vector as a boolean (non-zero = `1`), producing a single bit.
- **Bitwise NOT (`~`)**: Inverts each bit individually, then concatenates results.

## Use Case
This module helps learners grasp:
- How bitwise and logical operators differ in Verilog,
- Techniques for extracting and manipulating vector bits,
- Usage of concatenation for combining multiple bitwise operations.

## File Included

| File Name       | Description                                      |
|------------------|--------------------------------------------------|
| `top_module.v`   | Verilog source code for vector logic operations  |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Vectorgates](https://hdlbits.01xz.net/wiki/Vectorgates)
