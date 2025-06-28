# 32-Bit Carry-Select Adder

## Overview
This Verilog module implements a **32-bit carry-select adder** using three instances of a provided 16-bit adder module `add16`. It improves performance over a traditional ripple-carry adder by computing the upper 16-bit sum in **parallel** for both possible carry-in values (0 and 1), then selecting the correct result using a multiplexer based on the lower stage’s carry-out.

## Module Functionality

### top_module
- **Inputs:**
  - `a[31:0]` — First 32-bit input operand
  - `b[31:0]` — Second 32-bit input operand
- **Output:**
  - `sum[31:0]` — 32-bit sum of `a` and `b`

### Internal Signals:
- `c1`: Carry-out from the lower 16-bit addition
- `s1`, `s2`: Two 16-bit sum candidates computed with carry-in 0 and 1 respectively
- `c2`, `c3`: Unused carry-outs from upper 16-bit additions (can be left unconnected)

### Logic Description
1. **First `add16` block (`a1`)**:  
   Computes `sum[15:0]` using `a[15:0]`, `b[15:0]`, and `cin = 0`.
2. **Two upper `add16` blocks (`a2`, `a3`)**:  
   - `a2` computes upper sum assuming carry-in = 0 → output: `s1`
   - `a3` computes upper sum assuming carry-in = 1 → output: `s2`
3. **Multiplexer**:  
   - Uses `c1` to choose between `s1` and `s2` for `sum[31:16]`.

## Use Case
This carry-select design minimizes propagation delay and is commonly used in high-speed arithmetic circuits, such as:
- Fast ALUs
- DSP pipelines
- Arithmetic-heavy logic designs

## File Included

| File Name       | Description                            |
|------------------|----------------------------------------|
| `top_module.v`   | Verilog code for 32-bit carry-select adder |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Module_cseladd](https://hdlbits.01xz.net/wiki/Module_cseladd)
