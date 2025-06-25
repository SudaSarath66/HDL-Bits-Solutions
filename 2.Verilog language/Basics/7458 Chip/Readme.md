# 7458 Logic Chip Module

## Overview
This Verilog module replicates the behavior of the 7458 logic chip, which consists of four AND gates and two OR gates. It processes 10 input signals and produces 2 output signals by combining the results of multiple AND operations through OR logic.

## Module Functionality
- **Module Name:** `top_module`
- **Inputs:**  
  - Group 1: `p1a`, `p1b`, `p1c`, `p1d`, `p1e`, `p1f`  
  - Group 2: `p2a`, `p2b`, `p2c`, `p2d`
- **Outputs:**  
  - `p1y = (p1a & p1b & p1c) | (p1d & p1e & p1f)`  
  - `p2y = (p2a & p2b) | (p2c & p2d)`

## Use Case
This module demonstrates structured logic design using intermediate wires and basic gate-level modeling in Verilog. It's commonly used in HDLBits exercises to reinforce the concept of gate-level abstraction and multi-input logic expressions.

## File Included

| File Name       | Description                          |
|------------------|--------------------------------------|
| `top_module.v`   | Verilog code for 7458 logic chip     |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[7458](https://hdlbits.01xz.net/wiki/7458)
