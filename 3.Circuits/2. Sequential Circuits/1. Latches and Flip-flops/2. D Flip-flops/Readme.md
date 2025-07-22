# 8-Bit D Flip-Flops

## 🧾 Overview
This module implements 8 parallel D flip-flops that operate on the rising edge of a shared clock signal. It captures an 8-bit input vector `d` and stores the result in the 8-bit output vector `q`.

## 🧠 Module Functionality
- The module consists of 8 D flip-flops.
- Each flip-flop samples a corresponding bit of `d` on the **positive edge** of the clock.
- The values are stored in `q[7:0]` respectively.

## 🔍 Logic Explanation
- All flip-flops are triggered simultaneously using `posedge clk`.
- A single always block with a vector assignment is used.
- `q` holds the last sampled value of `d` until the next rising edge.

## 🎯 Use Case
Common in digital systems that require synchronized data latching, such as:
- Register files
- Parallel data storage
- Input buffering systems
- State capture in FSMs

## 📁 File Included

| File Name     | Description                          |
|--------------|--------------------------------------|
| `top_module.v` | Implements 8 D flip-flops in parallel |

## 📘 Related HDLBits Exercise
**HDLBits Link**: [Dff8 – HDLBits](https://hdlbits.01xz.net/wiki/Dff8)

