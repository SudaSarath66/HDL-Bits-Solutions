# 🔲 Kmap1 – Karnaugh Map Simplification Logic

## Overview
This module implements a combinational logic circuit derived from a Karnaugh Map (K-map). The logic is simplified using the Sum of Products (SOP) method to achieve minimal gate usage and optimal performance. The exercise emphasizes K-map simplification and its direct application to Verilog.

## Module Functionality
- **Inputs**:  
  - `a`: 1-bit input  
  - `b`: 1-bit input  
  - `c`: 1-bit input  
- **Output**:  
  - `out`: 1-bit output that results from evaluating the minimized Boolean expression from the K-map

## Use Case
Useful for designing efficient combinational logic circuits in hardware where optimization is important. This is often applied in digital electronics design courses, interviews, and FPGA logic minimization tasks.

## File Included

| File Name     | Description                                |
|---------------|--------------------------------------------|
| `top_module.v`| Verilog module implementing K-map logic    |

## Related HDLBits Exercise
- 🔗 [HDLBits - Kmap1](https://hdlbits.01xz.net/wiki/Kmap1)
