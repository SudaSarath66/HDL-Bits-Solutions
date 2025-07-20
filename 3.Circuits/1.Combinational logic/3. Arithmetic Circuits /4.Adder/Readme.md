# Full Adder-Based 4-Bit Ripple Carry Adder

## 🧠 Overview
This project implements a 4-bit ripple-carry adder using four full-adder modules. Each stage adds two input bits along with a carry-in bit, propagating carry across all stages to generate a final 5-bit sum.

## ⚙️ Module Functionality
- **top_module:** Handles 4-bit inputs `x` and `y` and produces a 5-bit `sum`.
- Internally instantiates 4 `full_adder` modules to perform bit-wise addition with carry chaining.
- Each `full_adder` takes 1-bit `a`, `b`, and `cin`, and outputs `sum` and `cout`.

## 🔍 Logic Explanation
- The 4-bit numbers `x` and `y` are added from LSB to MSB using ripple carry.
- Carries `c1`, `c2`, and `c3` are used between the full adder stages.
- The final carry-out is assigned to `sum[4]`.

## 💡 Use Case
Ideal for basic digital arithmetic operations where learning ripple carry adder design using structural modeling is required.

## 📁 Files Included

| File Name         | Description                              |
|------------------|------------------------------------------|
| `top_module.v`    | Top module that adds 4-bit numbers using 4 full adders |
| `full_adder.v`    | Standard 1-bit full adder implementation |

## 🔗 Related HDLBits Exercise
**Exams/m2014_q4j**  
[HDLBits Problem Link](https://hdlbits.01xz.net/wiki/Exams/m2014_q4j)
