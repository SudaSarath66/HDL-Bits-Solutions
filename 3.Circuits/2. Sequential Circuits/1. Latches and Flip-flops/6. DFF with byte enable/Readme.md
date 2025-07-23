# 🧠 16-Bit D Flip-Flops with Byte-Enable and Synchronous Reset

## 🧾 Overview
This module implements 16 D flip-flops with:
- **Byte-enable control** for selective updates
- **Synchronous active-low reset**
- Triggered by the **positive edge** of the clock (`clk`)

## 🧠 Module Functionality
- Each byte (8 bits) of the 16-bit output `q` can be independently enabled for updating.
- `byteena[1]`: Controls upper byte `q[15:8]`
- `byteena[0]`: Controls lower byte `q[7:0]`
- On reset (`resetn == 0`), both bytes are reset to 0 synchronously.

## 🔍 Logic Explanation
- On every **positive clock edge**:
  - If `resetn` is **low**, output `q` is reset to `16'b0`
  - If `resetn` is **high**, only the bytes with corresponding `byteena` bits set will update from `d`
- The logic uses two conditional branches to control updates per byte

## 🎯 Use Case
- Useful in register files or memory-mapped I/O where only part of the register needs to change
- Avoids unnecessary power consumption or logic toggling

## 📁 File Included

| File Name     | Description                                                        |
|---------------|--------------------------------------------------------------------|
| `top_module.v`| 16-bit DFFs with byte-enable and synchronous active-low reset      |

## 📘 Related HDLBits Exercise
**HDLBits Link**: [Dff16e – HDLBits](https://hdlbits.01xz.net/wiki/Dff16e)

