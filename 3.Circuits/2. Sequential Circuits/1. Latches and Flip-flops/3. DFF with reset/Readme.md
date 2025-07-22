# 8-Bit D Flip-Flops with Synchronous Reset

## 🧾 Overview
This module implements 8 D flip-flops with a **synchronous active-high reset**. Each flip-flop stores a bit from an 8-bit input vector `d`, triggered by the rising edge of the clock signal.

## 🧠 Module Functionality
- 8-bit D flip-flops triggered on the **positive edge** of the clock (`clk`).
- When `reset` is **high**, all outputs `q` are synchronously reset to 0.
- When `reset` is **low**, each `q[i]` captures `d[i]`.

## 🔍 Logic Explanation
- The `always @(posedge clk)` block monitors the clock.
- Inside the block:
  - If `reset` is high, all bits of `q` are assigned `0`.
  - Else, the value of `d` is assigned to `q`.
- This is a **synchronous reset** design (reset is checked within the clocked block).

## 🎯 Use Case
- Useful in digital designs where reset needs to occur **in sync with the clock**, such as:
  - Pipelined datapaths
  - Register banks
  - FSM initialization
  - Synchronized control logic

## 📁 File Included

| File Name     | Description                                       |
|--------------|---------------------------------------------------|
| `top_module.v` | 8-bit DFFs with synchronous reset on rising edge |

## 📘 Related HDLBits Exercise
**HDLBits Link**: [Dff8r – HDLBits](https://hdlbits.01xz.net/wiki/Dff8r)
