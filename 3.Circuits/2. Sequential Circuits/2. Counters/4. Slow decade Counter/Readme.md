# Countslow

## Overview  
This module implements a **decade counter (0 to 9)** with an additional feature to **pause/resume counting** based on an enable signal. The counter increments only when `slowena` is asserted. A **synchronous reset** initializes the counter to `0`.

## Module Functionality  

**Inputs:**  
- `clk` : Clock signal (positive edge-triggered)  
- `slowena` : Enable signal to allow counting  
- `reset` : Synchronous reset input  

**Output:**  
- `q` : 4-bit output representing the current counter value (`0` to `9`)

## Use Case  
This type of counter is commonly used in:
- Time-multiplexed displays where updates occur at slower intervals  
- Systems requiring manual or condition-based counting  
- Applications with variable timing input (e.g., user-triggered events)

## File Included  

| File Name     | Description                                     |
|---------------|-------------------------------------------------|
| top_module.v  | Verilog module for controlled decade counter     |

## Related HDLBits Exercise  
[Countslow – HDLBits](https://hdlbits.01xz.net/wiki/Countslow)
