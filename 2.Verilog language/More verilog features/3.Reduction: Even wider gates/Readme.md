# 100-Input Logic Gates using Reduction Operators (`gates100`)

## Overview
This Verilog module computes the results of **AND**, **OR**, and **XOR** operations across a 100-bit input vector. It leverages Verilog’s **reduction operators** to handle large fan-in logic concisely and efficiently.

## Module Functionality

### top_module
- **Input:**
  - `in` — 100-bit wide input vector (`[99:0]`)
- **Outputs:**
  - `out_and` — Logical AND of all 100 input bits
  - `out_or` — Logical OR of all 100 input bits
  - `out_xor` — Logical XOR of all 100 input bits

## Logic Explanation

Reduction operators perform bitwise operations across all bits of a vector:

- `&in` — returns 1 if **all** bits of `in` are 1
- `|in` — returns 1 if **at least one** bit of `in` is 1
- `^in` — returns 1 if the number of 1’s in `in` is **odd**

This is a powerful way to implement wide gates without explicitly listing each input.

### Examples:
- `in = 100'b111...1` → `out_and = 1`, `out_or = 1`, `out_xor = 0`
- `in = 100'b000...0` → `out_and = 0`, `out_or = 0`, `out_xor = 0`
- `in = 100'b000...01` → `out_and = 0`, `out_or = 1`, `out_xor = 1`

## Use Case

Ideal for:
- Fast error detection (e.g., parity checking, fault detection)
- Aggregating status signals across wide buses
- Synthesizing reduction logic for large input vectors

## File Included

| File Name       | Description                         |
|------------------|-------------------------------------|
| `top_module.v`   | Verilog code for 100-input gates    |

## Related HDLBits Exercise
This corresponds to the HDLBits problem:  
[Gates100](https://hdlbits.01xz.net/wiki/Gates100)
