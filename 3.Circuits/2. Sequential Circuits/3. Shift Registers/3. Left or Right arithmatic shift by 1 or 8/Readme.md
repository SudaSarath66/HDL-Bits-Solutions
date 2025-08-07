# Arithmetic Shift Register (Shift18)

## 🧾 Overview
This module implements a **64-bit arithmetic shift register** with synchronous load and controlled shifting. The register supports both left and right shifts (by 1 or 8 bits) and preserves the sign bit on right shifts (arithmetic right shift).

## 🔍 Module Functionality
- **Load** (`load = 1`): Loads input `data[63:0]` directly into the shift register.
- **Enable** (`ena = 1`): Performs a shift according to the `amount` input.
- **Amount[1:0]` values:
  - `2'b00`: Shift left by 1 bit.
  - `2'b01`: Shift left by 8 bits.
  - `2'b10`: Arithmetic shift right by 1 bit.
  - `2'b11`: Arithmetic shift right by 8 bits.

Arithmetic right shift fills in the sign bit (`q[63]`), ensuring sign extension.

## 🔧 Logic Explanation
- **Synchronous Process**:
  - On every **positive clock edge**, if `load` is high, `data` is loaded into `q`.
  - Otherwise, if `ena` is high, the register shifts according to `amount`.
- **Arithmetic Right Shift**:
  - Unlike logical shift, the MSB (`q[63]`) is preserved and shifted in for sign extension.

## 🧠 Use Case
Used in digital signal processing, arithmetic operations, and control systems where signed shifting (division by powers of 2) is required while maintaining sign integrity.

## 📁 File Included

| File Name   | Description                         |
|-------------|-------------------------------------|
| shift18.v   | Verilog code for 64-bit shift register |

## 🔗 Related HDLBits Exercise
[HDLBits - Shift18](https://hdlbits.01xz.net/wiki/Shift18)
