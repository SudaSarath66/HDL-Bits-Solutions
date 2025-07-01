# Conditional Logic: Avoiding Latches (`always if2`)

## Overview
This Verilog module performs two conditional checks:
1. Shut off the computer if the CPU is overheated.
2. Continue driving only if the destination is not yet reached and there's gas in the tank.

This exercise highlights a critical concept in Verilog — **avoiding unintended latches** by ensuring **all outputs are assigned in all conditions**.

## Module Functionality

### top_module
- **Inputs:**
  - `cpu_overheated` — Indicates CPU thermal status
  - `arrived` — Destination reached status
  - `gas_tank_empty` — Fuel status
- **Outputs:**
  - `shut_off_computer` — Turn off system if CPU overheats
  - `keep_driving` — Drive only if not arrived and fuel is available

## Logic Explanation

| Output             | Condition Logic                                            |
|--------------------|------------------------------------------------------------|
| `shut_off_computer` | `1` if `cpu_overheated == 1`, else `0`                     |
| `keep_driving`      | `1` if `!arrived && !gas_tank_empty`, else `0`             |

To avoid latch inference:
- All `reg` outputs are explicitly assigned in **both** `if` and `else` blocks.
- This ensures pure **combinational logic**.

## Use Case
This type of design pattern is essential for safe and predictable logic design, especially in control-based systems where decisions must account for all possible input conditions.

## File Included

| File Name       | Description                                      |
|------------------|--------------------------------------------------|
| `top_module.v`   | Verilog logic for safe condition-based controls |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Always_if2](https://hdlbits.01xz.net/wiki/Always_if2)
