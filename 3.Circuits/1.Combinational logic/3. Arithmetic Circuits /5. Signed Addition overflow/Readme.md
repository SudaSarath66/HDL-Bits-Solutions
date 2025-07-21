# ➕ 8-bit 2’s Complement Adder with Overflow Detection

## 📝 Overview
This module performs addition of two 8-bit 2’s complement numbers (`a` and `b`) and produces an 8-bit result (`s`). It also detects **signed overflow** and outputs the result on a signal called `overflow`.

## ⚙️ Module Functionality
- **Inputs:** Two 8-bit signed integers `a` and `b`
- **Outputs:**
  - `s`: 8-bit sum result of `a + b`
  - `overflow`: High (`1`) if a signed overflow occurs

## 🔍 Logic Explanation
- A **signed overflow** happens if the sum of two positive numbers gives a negative result, or the sum of two negative numbers gives a positive result.
- This is detected by checking the **sign bits** of the inputs and result:
  - `overflow = (a[7] == b[7]) && (s[7] != a[7])`

## 🎯 Use Case
Used in digital processors and ALUs to safely detect and handle arithmetic overflow in signed operations.

## 📁 File Included

| File Name   | Description                        |
|-------------|------------------------------------|
| `top_module.v` | Top module with adder and overflow logic |

## 🔗 Related HDLBits Exercise
**HDLBits Link:** [Exams/ece241 2014 q1c](https://hdlbits.01xz.net/wiki/Exams/ece241_2014_q1c)

