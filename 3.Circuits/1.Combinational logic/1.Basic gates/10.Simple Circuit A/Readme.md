# Mt2015_q4a – XOR and AND Logic Circuit

## Overview  
This Verilog module implements a simple combinational logic function where the output `z` is derived from two 1-bit inputs `x` and `y`. The logic equation is:  
**`z = (x ^ y) & x`**  
This function first computes the bitwise XOR of `x` and `y`, then logically ANDs the result with `x`.

## Module Functionality

### top_module
- **Inputs:**
  - `x` — First input bit.
  - `y` — Second input bit.
- **Output:**
  - `z` — Output of the expression `(x ^ y) & x`.

## Logic Explanation  
This logic circuit uses the following operations:
- `x ^ y` — Bitwise XOR returns `1` only when `x` and `y` are different.
- `(x ^ y) & x` — The final output is `1` only if:
  - `x = 1`
  - and `x ≠ y` (i.e., `y = 0`)

### Truth Table:

| x | y | x^y | z = (x^y) & x |
|---|---|-----|----------------|
| 0 | 0 |  0  |       0        |
| 0 | 1 |  1  |       0        |
| 1 | 0 |  1  |       1        |
| 1 | 1 |  0  |       0        |

This is a basic two-gate implementation using XOR and AND.

## Use Case  
- Useful in conditional logic and enable circuitry where an action is taken only if `x` is high and `x ≠ y`.
- Demonstrates fundamental Boolean expression manipulation.
- Ideal for introductory-level HDL practice or gate-level testing.

## File Included

| File Name       | Description                              |
|------------------|------------------------------------------|
| `top_module.v`   | Implements `z = (x ^ y) & x` logic circuit |

## Related HDLBits Exercise  
This implementation corresponds to the HDLBits problem:  
[Mt2015_q4a](https://hdlbits.01xz.net/wiki/Mt2015_q4a)
