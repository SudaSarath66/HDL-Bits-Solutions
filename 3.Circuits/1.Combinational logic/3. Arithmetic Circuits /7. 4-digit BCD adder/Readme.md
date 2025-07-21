# 🧮 Bcdadd4 - 4-Digit BCD Ripple-Carry Adder

## 📘 Overview
This Verilog module implements a 4-digit BCD (Binary-Coded Decimal) ripple-carry adder using four instances of a 1-digit BCD adder (`bcd_fadd`). It takes two 16-bit inputs representing four packed BCD digits, along with a carry-in, and produces a 16-bit BCD sum and a carry-out.

## ⚙️ Module Functionality

- **Inputs**
  - `a [15:0]`: First 4-digit BCD number (packed as four 4-bit digits)
  - `b [15:0]`: Second 4-digit BCD number (packed as four 4-bit digits)
  - `cin`: Carry-in (1 bit)

- **Outputs**
  - `sum [15:0]`: 4-digit BCD result (packed)
  - `cout`: Carry-out from the most significant digit

## 🧠 Logic Explanation
Each 4-bit chunk of `a` and `b` corresponds to one BCD digit. The design instantiates the `bcd_fadd` module four times to handle the four digits. Carry is propagated sequentially from the least to the most significant digit (ripple-carry approach). Each `bcd_fadd` correctly adds two BCD digits and a carry-in and produces a BCD-correct sum and carry-out.

## 🎯 Use Case
This module is useful in:
- Digital calculators
- Digital counters with decimal display
- Financial applications requiring decimal arithmetic

## 📂 File Included

| File Name      | Description                              |
|----------------|------------------------------------------|
| `top_module.v` | Top module for 4-digit BCD ripple adder  |

## 🔗 Related HDLBits Exercise
👉 [Bcdadd4 - HDLBits](https://hdlbits.01xz.net/wiki/Bcdadd4)

