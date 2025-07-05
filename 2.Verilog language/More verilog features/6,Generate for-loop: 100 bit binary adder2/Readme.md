# 100-bit Ripple-Carry Adder using Full Adders (`adder100i`)

## Overview
This Verilog module implements a 100-bit **ripple-carry adder** by chaining together 100 individual 1-bit full adder modules. It performs addition on two 100-bit input vectors along with an initial carry-in and outputs the sum and all intermediate carry-outs.

## Module Functionality

### full_adder
- **Inputs:**
  - `a`, `b` — 1-bit operands
  - `cin` — carry-in
- **Outputs:**
  - `sum` — 1-bit sum
  - `cout` — carry-out

### top_module
- **Inputs:**
  - `a`, `b` — 100-bit inputs
  - `cin` — single-bit carry-in
- **Outputs:**
  - `sum` — 100-bit sum output
  - `cout` — 100-bit vector containing all carry-outs from each full adder stage

## Logic Explanation

- `carry[0]` is initialized to the input `cin`.
- A `generate` loop instantiates 100 full adders:
  - Each full adder receives one bit from `a` and `b`, and a carry-in.
  - The carry-out from each stage becomes the carry-in for the next.
- The carry-out from the `i`-th full adder is stored in `cout[i]`.

This simulates a **ripple-carry behavior**, where each carry propagates through the chain of full adders, which may introduce delay but is structurally simple.

## Use Case

This module is ideal for:
- Teaching concepts of structural Verilog and carry propagation
- FPGA-based multi-bit arithmetic circuits
- Binary addition where hardware simplicity is prioritized

## File Included

| File Name       | Description                              |
|------------------|------------------------------------------|
| `top_module.v`   | 100-bit ripple-carry adder using full adders |
| `full_adder.v`   | 1-bit full adder logic definition          |

## Related HDLBits Exercise
This corresponds to the HDLBits problem:  
[Adder100i](https://hdlbits.01xz.net/wiki/Adder100i)
