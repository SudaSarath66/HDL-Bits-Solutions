# 🔢 Adder100 - 100-bit Binary Adder

## 📘 Overview
This Verilog module performs the addition of two 100-bit binary numbers along with a carry-in input. The result is a 100-bit sum and a 1-bit carry-out. The implementation leverages Verilog’s built-in arithmetic capabilities for compact and efficient code.

## ⚙️ Module Functionality
- **Inputs**
  - `a [99:0]`: First 100-bit binary number
  - `b [99:0]`: Second 100-bit binary number
  - `cin`: Carry-in (1 bit)
- **Outputs**
  - `sum [99:0]`: 100-bit result of the addition
  - `cout`: Carry-out from the most significant bit

## 🧠 Logic Explanation
The concatenation `{cout, sum}` collects the total 101-bit result of the addition (`a + b + cin`). Verilog’s arithmetic handles carry propagation naturally, and the most significant bit is directly assigned to `cout`.

## 🎯 Use Case
This module is useful in building:
- High-bit-width Arithmetic Logic Units (ALUs)
- Digital Signal Processing (DSP) blocks
- Cryptographic hardware that requires wide-word additions

## 📂 File Included

| File Name      | Description                      |
|----------------|----------------------------------|
| `top_module.v` | Verilog module for Adder100      |

## 🔗 Related HDLBits Exercise
👉 [Adder100 - HDLBits](https://hdlbits.01xz.net/wiki/Adder100)

