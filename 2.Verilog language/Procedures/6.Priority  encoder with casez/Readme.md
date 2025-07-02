# 8-bit Priority Encoder using `casez` (`always_casez`)

## Overview
This Verilog module implements an **8-bit priority encoder** using a `casez` statement. The encoder identifies the **first set bit (1)** in the input vector from **least significant bit (LSB)** to **most significant bit (MSB)** and returns its index. If no bits are high, the output is `3'd0`.

## Module Functionality

### top_module
- **Input:**
  - `in[7:0]` — 8-bit input signal
- **Output:**
  - `pos[2:0]` — 3-bit output indicating position of the first `1` (LSB has highest priority)

## Logic Explanation

- This design uses the `casez` statement, which allows **don't-care bits (z)** in comparisons.
- The encoder matches from **bit[0] to bit[7]**, ensuring LSB has the highest priority.
- Only **9 cases** are needed instead of 256, by using `z` to simplify the priority matching.
- Example behavior:
  - `8'b00010000` → `pos = 4`
  - `8'b10000001` → `pos = 0` (bit 0 has highest priority)
  - `8'b00000000` → `pos = 0` (default case)

## Use Case

Priority encoders are used in:
- Interrupt handling (to identify highest-priority interrupt)
- Arbiter circuits
- Bus request prioritization
- Efficient decision-making logic in finite state machines (FSMs)

## File Included

| File Name       | Description                           |
|------------------|---------------------------------------|
| `top_module.v`   | Verilog code for 8-bit priority encoder using `casez` |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Always_casez](https://hdlbits.01xz.net/wiki/Always_casez)
