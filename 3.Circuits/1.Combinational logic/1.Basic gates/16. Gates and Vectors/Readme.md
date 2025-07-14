# Gatesv – Bitwise Neighbor Comparison Logic

## Overview  
This Verilog module processes a **4-bit input vector** and generates three output vectors based on relationships between each bit and its adjacent bit (either left or right). The module illustrates the use of bitwise logic operations such as **AND**, **OR**, and **XOR**, and demonstrates how to handle **index boundaries and wrap-around logic** in combinational design.

## Module Functionality

### top_module
- **Input:**
  - `in[3:0]` — 4-bit input vector.
- **Outputs:**
  - `out_both[2:0]` — Indicates if a bit and its **left neighbor** are both `1`.
  - `out_any[3:1]` — Indicates if a bit or its **right neighbor** is `1`.
  - `out_different[3:0]` — Indicates if a bit is **different from its left neighbor**, with **wrap-around** from bit 0 to bit 3.

## Logic Explanation

- **out_both[2:0] = in[2:0] & in[3:1];**  
  Compares each bit with the bit to its **left** (higher index). Bit 3 has no left neighbor, so it's excluded.

- **out_any[3:1] = in[3:1] | in[2:0];**  
  Compares each bit with the bit to its **right** (lower index). Bit 0 has no right neighbor, so it's excluded.

- **out_different[3:0] = in ^ {in[0], in[3:1]};**  
  Uses **XOR** to compare each bit with its **left neighbor**, with wrap-around for `in[3]` (neighbor is `in[0]`).

These operations use slicing and concatenation to apply the logic efficiently across all valid bits.

## Use Case  
- Useful in pattern detection, bitstream analysis, or edge transition logic.
- Demonstrates advanced vector manipulation, bitwise operations, and handling of circular comparisons.
- Applicable in data compression, parity checks, and digital communication pre-processing.

## File Included

| File Name       | Description                                                        |
|------------------|--------------------------------------------------------------------|
| `top_module.v`   | Implements neighbor-based logic using AND, OR, XOR, and wrap-around |

## Related HDLBits Exercise  
This implementation corresponds to the HDLBits problem:  
[Gatesv](https://hdlbits.01xz.net/wiki/Gatesv)
