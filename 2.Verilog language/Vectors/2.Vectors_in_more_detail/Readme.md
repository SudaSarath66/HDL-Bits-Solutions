# Vector Slice Module (High and Low Byte)

## Overview
This Verilog module takes a 16-bit input vector and splits it into two 8-bit outputs: one containing the lower 8 bits, and the other containing the upper 8 bits. It demonstrates the use of vector part-select and reinforces correct indexing and endianness in Verilog.

## Module Functionality
- **Module Name:** `top_module`
- **Input:** `in[15:0]` — a 16-bit input vector
- **Outputs:**
  - `out_lo[7:0] = in[7:0]` — lower byte (least significant bits)
  - `out_hi[7:0] = in[15:8]` — upper byte (most significant bits)

## Use Case
This module is used to illustrate proper vector slicing, part-select usage, and the impact of Verilog's indexing rules. It emphasizes attention to signal direction and endianness to avoid logic bugs, especially in systems dealing with byte-wise operations.

## File Included

| File Name       | Description                              |
|------------------|------------------------------------------|
| `top_module.v`   | Verilog source code for vector splitting |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Vector1](https://hdlbits.01xz.net/wiki/Vector1)
