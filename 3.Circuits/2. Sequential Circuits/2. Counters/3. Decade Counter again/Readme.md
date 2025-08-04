# Count1to10

## Overview  
This module implements a **modified decade counter** that counts from `1` to `10` inclusively. After reaching `10`, it wraps around to `1`. The design includes a **synchronous reset** which sets the counter back to `1` on the next rising edge of the clock.

## Module Functionality  

**Inputs:**  
- `clk` : Clock signal (positive edge-triggered)  
- `reset` : Synchronous reset input  

**Output:**  
- `q` : 4-bit output representing the current counter value (`1` to `10`)

## Use Case  
Such counters are applicable in:
- Digital timers (e.g., 10-second intervals)
- Repeating sequences with non-zero bases
- Step-based automation controllers where first step starts from 1

## File Included  

| File Name     | Description                                    |
|---------------|------------------------------------------------|
| top_module.v  | Verilog module for counting from 1 to 10       |

## Related HDLBits Exercise  
[Count1to10 – HDLBits](https://hdlbits.01xz.net/wiki/Count1to10)
