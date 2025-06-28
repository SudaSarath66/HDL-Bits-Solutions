# 3-Bit Shift Register Using Module Instantiation

## Overview
This Verilog module creates a 3-bit shift register by instantiating and chaining three `my_dff` modules. Each flip-flop shares the same clock signal and passes its output to the next stage.

## Module Functionality
- **Module Name:** `top_module`
- **Inputs:**  
  - `clk` — clock input  
  - `d` — serial data input
- **Output:**  
  - `q` — output of the last flip-flop in the chain

## Logic Explanation
- Three `my_dff` modules are instantiated.
- The `clk` is connected to all instances.
- The `d` input is fed to the first flip-flop, and outputs are connected in series:
  - `d → w1 → w2 → q`

## Use Case
This module demonstrates how to build a shift register using D flip-flop modules, showcasing module reuse and basic sequential logic design.

## File Included

| File Name       | Description                            |
|------------------|----------------------------------------|
| `top_module.v`   | Verilog code for a 3-bit shift register |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Module_shift](https://hdlbits.01xz.net/wiki/Module_shift)
