# XOR Gate using `assign`, `always @(*)`, and `always @(posedge clk)`

## Overview
This Verilog module demonstrates three different ways to implement an **XOR gate**:
1. Continuous assignment (`assign`)
2. Combinational always block (`always @(*)`)
3. Sequential (clocked) always block (`always @(posedge clk)`)

This exercise also introduces the concepts of **blocking vs. non-blocking assignments** and **combinational vs. clocked logic**.

## Module Functionality

### top_module
- **Inputs:**
  - `clk` — clock signal for sequential logic
  - `a`, `b` — 1-bit inputs for XOR logic
- **Outputs:**
  - `out_assign` — result of `a ^ b` using `assign` statement
  - `out_always_comb` — result of `a ^ b` using combinational `always`
  - `out_always_ff` — result of `a ^ b` stored in a flip-flop on rising edge of `clk`

## Logic Explanation

| Output Signal      | Implementation      | Description                                                  |
|--------------------|---------------------|--------------------------------------------------------------|
| `out_assign`       | `assign` statement  | Immediate XOR logic output                                   |
| `out_always_comb`  | `always @(*)`       | Combinational logic using blocking assignment `=`           |
| `out_always_ff`    | `always @(posedge clk)` | Clocked logic using non-blocking assignment `<=`; delayed by one clock cycle |

> **Note:** In clocked logic, the output appears **after one clock edge**, effectively introducing a delay or register.

## Use Case
This module helps in understanding how identical logic (XOR) can behave differently depending on whether it is implemented as purely combinational or clocked (sequential), which is crucial in digital design.

## File Included

| File Name       | Description                                |
|------------------|--------------------------------------------|
| `top_module.v`   | Verilog code using all three XOR logic styles |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Alwaysblock2](https://hdlbits.01xz.net/wiki/Alwaysblock2)
