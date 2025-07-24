# 🔁 D Flip-Flop with Synchronous Reset

## 🧾 Overview
This module implements a **positive-edge triggered D flip-flop** with a **synchronous active-high reset** (`r`).  
The reset signal is only checked and applied during the rising edge of the clock.

## 🧠 Module Functionality
- On every **positive edge of `clk`**:
  - If `r == 1`, output `q` is reset to `0`
  - Else, output `q` takes the value of input `d`

## 🔍 Logic Explanation
- Synchronous reset means the reset action happens **in sync with the clock**
- The sensitivity list contains only `posedge clk` since the reset is not asynchronous
- This is a common design for RTL-based flip-flops where reset timing is critical and clock-controlled

## 🎯 Use Case
- Widely used in digital systems where reset should not interfere with clock domain crossing
- Helps avoid metastability and ensures predictable state changes only on clock edges

## 📁 File Included

| File Name     | Description                                 |
|---------------|---------------------------------------------|
| `top_module.v`| D flip-flop with active-high synchronous reset |

## 📘 Related HDLBits Exercise
**HDLBits Link**: [Exams/m2014_q4d – HDLBits](https://hdlbits.01xz.net/wiki/Exams/m2014_q4d)
