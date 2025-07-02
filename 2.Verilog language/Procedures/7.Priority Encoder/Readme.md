# 4-bit Priority Encoder (`always_case2`)

## Overview
This Verilog module implements a **4-bit priority encoder** using a `case` statement inside a combinational `always` block. The priority encoder identifies the **first high (1)** bit from **least significant bit (LSB)** to **most significant bit (MSB)** and outputs its **position**.

## Module Functionality

### top_module
- **Input:**
  - `in[3:0]` — 4-bit input vector
- **Output:**
  - `pos[1:0]` — 2-bit output indicating the index of the first `1` in `in`

## Logic Explanation

- The priority is given from **LSB (in[0])** to **MSB (in[3])**.
- The `case` statement checks all 16 possible combinations of `in` to assign the correct `pos` value.
- If multiple bits are high, the encoder outputs the **lowest-numbered set bit**.
- If all bits are 0, it returns `pos = 2'b00`.

### Example

| `in`        | `pos` |
|-------------|--------|
| `4'b0000`   | `2'b00` |
| `4'b0001`   | `2'b00` |
| `4'b0010`   | `2'b01` |
| `4'b0100`   | `2'b10` |
| `4'b1000`   | `2'b11` |
| `4'b1010`   | `2'b01` | ← First 1 is at position 1 (from right)

## Use Case
Priority encoders are widely used in interrupt controllers, arbitration logic, and scenarios where detecting the **first occurrence of an event** is critical.

## File Included

| File Name       | Description                              |
|------------------|------------------------------------------|
| `top_module.v`   | Verilog code for 4-bit priority encoder  |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Always_case2](https://hdlbits.01xz.net/wiki/Always_case2)
