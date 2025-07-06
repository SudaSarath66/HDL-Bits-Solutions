# 100-Digit BCD Ripple-Carry Adder (`bcdadd100`)

## Overview
This Verilog module implements a **100-digit Binary-Coded Decimal (BCD) ripple-carry adder**. It adds two 400-bit BCD numbers (each digit is 4 bits), along with a carry-in bit, and outputs a 400-bit BCD sum and a final carry-out. It uses 100 instances of a pre-defined module `bcd_fadd` that handles the addition of individual BCD digits.

## Module Functionality

### bcd_fadd
- **Inputs:**
  - `a`, `b` — 4-bit BCD digits (0–9)
  - `cin` — Carry-in (1-bit)
- **Outputs:**
  - `sum` — 4-bit BCD sum (0–9 or corrected output if needed)
  - `cout` — Carry-out (1-bit)

### top_module
- **Inputs:**
  - `a`, `b` — 400-bit inputs, each composed of 100 BCD digits
  - `cin` — Single-bit carry-in
- **Outputs:**
  - `sum` — 400-bit BCD result of the addition
  - `cout` — Final carry-out after the last digit addition

## Logic Explanation

- The adder splits the 400-bit vectors `a` and `b` into 100 4-bit BCD digits.
- A generate loop is used to instantiate 100 `bcd_fadd` modules:
  - Each instance adds one pair of 4-bit digits and a carry-in.
  - The carry-out from one digit is passed as carry-in to the next.
- The chain starts with the input `cin` and ends with the output `cout`.

This effectively builds a **BCD ripple-carry adder**, propagating carry sequentially through all 100 digits.

## Use Case

Useful in:
- Decimal arithmetic units (e.g., financial applications)
- FPGA implementations of large BCD calculators
- BCD-based ALU operations in digital systems

## File Included

| File Name       | Description                                       |
|------------------|---------------------------------------------------|
| `top_module.v`   | Top-level BCD adder using 100 `bcd_fadd` modules |
| `bcd_fadd.v`     | One-digit BCD full adder logic (assumed provided) |

## Related HDLBits Exercise
This corresponds to the HDLBits problem:  
[Bcdadd100](https://hdlbits.01xz.net/wiki/Bcdadd100)
