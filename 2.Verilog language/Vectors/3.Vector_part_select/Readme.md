# 32-Bit Byte Reversal Module

## Overview
This Verilog module reverses the byte order of a 32-bit input vector. It is commonly used in applications that require endianness conversion between little-endian and big-endian systems, such as communication protocols and CPU interfaces.

## Module Functionality
- **Module Name:** `top_module`
- **Input:** `in[31:0]` — a 32-bit input word
- **Output:** `out[31:0]` — the input word with bytes reversed

### Byte Mapping
| Byte Position     | Output Byte        | Input Byte        |
|-------------------|--------------------|-------------------|
| `out[31:24]`      | Byte 3 (MSB)       | `in[7:0]`         |
| `out[23:16]`      | Byte 2             | `in[15:8]`        |
| `out[15:8]`       | Byte 1             | `in[23:16]`       |
| `out[7:0]`        | Byte 0 (LSB)       | `in[31:24]`       |

## Use Case
This module is typically used in hardware systems where byte order must be converted to match interface or protocol expectations (e.g., little-endian to big-endian).

## File Included

| File Name       | Description                                |
|------------------|--------------------------------------------|
| `top_module.v`   | Verilog code to reverse byte order in a 32-bit word |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Vector2](https://hdlbits.01xz.net/wiki/Vector2)
