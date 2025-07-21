# 🔢 Adder100 - 100-bit Binary Adder

## 📘 Overview
This project implements a 100-bit binary adder in Verilog. It takes two 100-bit inputs (`a` and `b`) and a carry-in (`cin`), and produces a 100-bit sum along with a final carry-out. This is a concise example demonstrating how to use Verilog's powerful bitwise addition operator to build large-width adders efficiently.

## ⚙️ Module Functionality
- Inputs: Two 100-bit numbers `a` and `b`, and a carry-in `cin`.
- Output: The 100-bit `sum` and a single-bit `cout` for carry-out.
- This is a behavioral one-line implementation using Verilog's `+` operator.

## 🧠 Logic Explanation
The expression `{cout, sum} = a + b + cin;` concatenates the carry-out with the sum, letting Verilog handle the carry propagation internally. This is efficient and synthesizable.

## 🎯 Use Case
Used in digital designs requiring high-width arithmetic operations such as ALUs, DSPs, or cryptographic hardware that needs to handle large data widths.

## 📂 File Included

| File Name      | Description                      |
|----------------|----------------------------------|
| `top_module.v` | Verilog module for Adder100      |

## 🔗 Related HDLBits Exercise
[Adder100 - HDLBits]([(https://hdlbits.01xz.net/wiki/Adder100])
