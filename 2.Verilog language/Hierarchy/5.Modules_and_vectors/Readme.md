# 8-Bit Wide 3-Stage Shift Register with Selectable Output

## Overview
This Verilog module implements an 8-bit wide, 3-stage shift register using three instances of a provided `my_dff8` module. It also includes a 4-to-1 multiplexer to select the output stage based on a 2-bit `sel` signal.

## Module Functionality
- **Module Name:** `top_module`
- **Inputs:**  
  - `clk` — clock signal  
  - `d [7:0]` — 8-bit input vector  
  - `sel [1:0]` — 2-bit selector signal
- **Output:**  
  - `q [7:0]` — selected 8-bit output

## Logic Explanation
- Three `my_dff8` modules are instantiated and connected in series:
  - `d → w0 → w1 → w2`
- A 4-to-1 multiplexer chooses which stage’s output to assign to `q`, based on `sel`:
  - `00` → output `d` (no delay)  
  - `01` → output `w0` (1-cycle delay)  
  - `10` → output `w1` (2-cycle delay)  
  - `11` → output `w2` (3-cycle delay)

## Use Case
This module is useful for learning how to work with vector ports in module instantiation, and how to design selectable delay elements in pipelined data paths.

## File Included

| File Name       | Description                                  |
|------------------|----------------------------------------------|
| `top_module.v`   | Verilog code for 8-bit shift register with MUX |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Module_shift8](https://hdlbits.01xz.net/wiki/Module_shift8)
