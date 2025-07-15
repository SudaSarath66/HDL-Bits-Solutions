# Gatesv100 – 100‑bit Neighbor Relationship Analyzer

## Overview  
This Verilog module implements neighbor-based logic operations on a **100-bit input vector**. It generates three output vectors that compare each bit with its adjacent bit to the left or right. The design scales the logic used in the smaller `Gatesv` module to a full 100-bit width and demonstrates the use of slicing, concatenation, and wrap-around logic on large vectors.

## Module Functionality

### top_module
- **Input:**
  - `in[99:0]` — 100-bit input vector.
- **Outputs:**
  - `out_both[98:0]` — High when `in[i] & in[i+1]` are both `1` (left-neighbor AND).
  - `out_any[99:1]` — High when `in[i] | in[i-1]` is `1` (right-neighbor OR).
  - `out_different[99:0]` — High when `in[i]` differs from its left neighbor (with wrap-around for `in[99]`).

## Logic Explanation

- **Left-neighbor AND (`out_both`)**  
  - `out_both = in[98:0] & in[99:1];`  
  - Each bit compares with the one to its **left** (higher index). `in[99]` has no left neighbor and is excluded.

- **Right-neighbor OR (`out_any`)**  
  - `out_any = in[99:1] | in[98:0];`  
  - Each bit compares with the one to its **right** (lower index). `in[0]` has no right neighbor and is excluded.

- **Wrap-around XOR (`out_different`)**  
  - `out_different = in ^ {in[0], in[99:1]};`  
  - Compares each bit with the **left neighbor**, treating the input as circular. `in[0]` becomes the neighbor of `in[99]`.

This implementation ensures clean, vectorized logic suitable for high-performance combinational circuits.

## Use Case  
- Scalable solution for analyzing large data streams or bit patterns.
- Useful in data compression, stream encoding, parity analysis, and signal transition detection.
- Demonstrates efficient vector slicing and wrap-around indexing in Verilog.

## File Included

| File Name       | Description                                                          |
|------------------|----------------------------------------------------------------------|
| `top_module.v`   | Implements 100-bit AND/OR/XOR neighbor comparison logic with wrap-around |

## Related HDLBits Exercise  
This implementation corresponds to the HDLBits problem:  
[Gatesv100](https://hdlbits.01xz.net/wiki/Gatesv100)
