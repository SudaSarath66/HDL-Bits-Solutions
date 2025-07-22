# D Flip-Flop

## 🧾 Overview
This module implements a single D flip-flop using an `always @(posedge clk)` block. A D flip-flop samples the input `d` on the rising edge of the clock and stores it in `q`.

## 🧠 Module Functionality
The flip-flop:
- Monitors the clock signal.
- On the rising edge, it latches the value of `d` into output `q`.
- Holds the value until the next positive clock edge.

## 🔍 Logic Explanation
- A D flip-flop stores a bit.
- The output `q` is updated only on the **positive edge** of `clk`.
- This is a sequential logic block and acts as a memory element.

## 🎯 Use Case
Used as a basic storage element in digital systems such as registers, counters, shift registers, FSMs, and pipelines.

## 📁 File Included

| File Name | Description                   |
|-----------|-------------------------------|
| `top_module.v` | Implements the D flip-flop |

## 📘 Related HDLBits Exercise
**HDLBits Link**: [Dff – HDLBits](https://hdlbits.01xz.net/wiki/Dff)

