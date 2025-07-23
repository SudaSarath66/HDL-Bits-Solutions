# 🔁 8-Bit D Flip-Flops with Synchronous Reset to 0x34 (Negative Edge)

## 🧾 Overview
This module implements 8 D flip-flops that:
- Use **synchronous active-high reset**
- Are triggered on the **negative edge** of the clock (`clk`)
- Reset their outputs to a custom value: **8'h34** instead of 0

## 🧠 Module Functionality
- On the **falling edge** of the clock:
  - If `reset` is high, all flip-flops reset to `8'h34`
  - Otherwise, each output `q[i]` captures the corresponding input `d[i]`

## 🔍 Logic Explanation
- Uses `always @(negedge clk)` to respond to negative clock edge.
- Inside the always block:
  - If `reset` is asserted (`1`), assign the fixed value `8'h34` to output `q`.
  - Else, pass the input `d` to output `q`.

> ⚠️ Reset is **synchronous**, meaning it only affects `q` on the **clock's falling edge**.

## 🎯 Use Case
- Custom initialization of registers
- Control logic where a default or preloaded value like `0x34` is required on reset
- Negative edge-sensitive timing paths

## 📁 File Included

| File Name     | Description                                                |
|--------------|------------------------------------------------------------|
| `top_module.v` | 8-bit DFFs with synchronous reset to 0x34 on negedge clk  |

## 📘 Related HDLBits Exercise
**HDLBits Link**: [Dff8p – HDLBits](https://hdlbits.01xz.net/wiki/Dff8p)
