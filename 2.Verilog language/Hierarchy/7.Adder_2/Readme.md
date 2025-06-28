# 32-Bit Adder Using Hierarchical Full Adders

## Overview
This Verilog module implements a 32-bit ripple-carry adder by instantiating two 16-bit adders (`add16`). Each `add16` module, in turn, is built using 16 full adders (`add1`), demonstrating two levels of hierarchy in digital design.

## Module Functionality

### top_module
- **Inputs:**
  - `a [31:0]` — First 32-bit operand
  - `b [31:0]` — Second 32-bit operand
- **Output:**
  - `sum [31:0]` — 32-bit result of `a + b`

### add1
- **Inputs:**
  - `a, b, cin` — Single-bit operands and carry-in
- **Outputs:**
  - `sum` — Single-bit sum output
  - `cout` — Carry-out

### Internal Structure
- Two `add16` modules are instantiated inside `top_module`:
  - First `add16`: Computes `sum[15:0]` and carry `car_low`
  - Second `add16`: Computes `sum[31:16]` using `car_low` as carry-in
- Each `add16` internally uses 16 `add1` modules to perform bit-wise full addition

## Use Case
This design showcases:
- Modular and reusable Verilog code structure
- Hierarchical hardware design
- How full adders can be composed to form multi-bit arithmetic units

## File Included

| File Name       | Description                             |
|------------------|-----------------------------------------|
| `top_module.v`   | Top-level 32-bit adder with hierarchy   |
| `add1.v`         | Full adder (1-bit) implementation       |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Module_add](https://hdlbits.01xz.net/wiki/Module_add)
