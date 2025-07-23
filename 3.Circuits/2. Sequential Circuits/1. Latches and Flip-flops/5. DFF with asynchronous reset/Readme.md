# 🔁 8-Bit D Flip-Flops with Asynchronous Reset

## 🧾 Overview
This module implements 8 D flip-flops that:
- Use **asynchronous active-high reset**
- Are triggered on the **positive edge** of the clock (`clk`)
- Reset their outputs to **0x00** when `areset` is high

## 🧠 Module Functionality
- On the **rising edge** of the clock or **asynchronous reset**:
  - If `areset` is high, output `q` is immediately reset to `8'b00000000`
  - Otherwise, each bit of `q` captures the corresponding bit from input `d`

## 🔍 Logic Explanation
- The sensitivity list includes both `posedge clk` and `posedge areset`, allowing asynchronous behavior.
- If `areset` is asserted (`1`), output is reset to `0` immediately, regardless of clock.
- If not reset, the flip-flops latch `d` on the next rising clock edge.

> ⚠️ Asynchronous resets are evaluated **before** the clock edge occurs.

## 🎯 Use Case
- Used in scenarios requiring an immediate reset action
- Ideal for reset-dominant FSM designs or testbench initialization

## 📁 File Included

| File Name     | Description                                                |
|--------------|------------------------------------------------------------|
| `top_module.v` | 8-bit DFFs with asynchronous reset to 0 on posedge clk    |

## 📘 Related HDLBits Exercise
**HDLBits Link**: [Dff8ar – HDLBits](https://hdlbits.01xz.net/wiki/Dff8ar)
