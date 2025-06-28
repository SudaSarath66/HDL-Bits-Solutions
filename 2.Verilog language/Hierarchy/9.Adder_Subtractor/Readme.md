# 32-Bit Adder-Subtractor Using Conditional Inversion

## Overview
This Verilog module implements a **32-bit adder-subtractor**. It conditionally subtracts `b` from `a` when the control signal `sub` is high. The circuit uses two instances of a provided `add16` module, each handling 16 bits of the operation. Subtraction is achieved by inverting `b` and adding 1 (i.e., taking 2’s complement), and feeding that into the adder.

## Module Functionality

### top_module
- **Inputs:**
  - `a[31:0]` — First operand
  - `b[31:0]` — Second operand
  - `sub` — Control signal: `0` for addition, `1` for subtraction
- **Output:**
  - `sum[31:0]` — Result of `a + b` or `a - b`

### Internal Logic:
- `b_bar = (sub) ? (~b + 1) : b` — Calculates 2's complement of `b` when subtraction is needed
- `add16` block 1: computes lower 16 bits of the sum and outputs carry
- `add16` block 2: computes upper 16 bits using carry from the first stage

### Logic Explanation
- The XOR operation with `{32{sub}}` inverts `b` if `sub == 1`
- The addition of 1 is embedded in the structure of `b_bar` using `+1` logic
- Subtraction is equivalent to adding the two’s complement of `b`

## Use Case
This module is commonly used in ALUs to implement addition and subtraction with minimal hardware overhead. The `sub` control signal can be directly driven by control logic from a CPU or arithmetic unit.

## File Included

| File Name       | Description                                 |
|------------------|---------------------------------------------|
| `top_module.v`   | Verilog code for 32-bit adder-subtractor    |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Module_addsub](https://hdlbits.01xz.net/wiki/Module_addsub)
