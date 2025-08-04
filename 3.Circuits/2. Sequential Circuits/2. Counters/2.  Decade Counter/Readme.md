# Count10

## Overview  
This module implements a **decade counter** (mod-10) that counts from `0` to `9` inclusively. After reaching `9`, it rolls over to `0`. The counter features a **synchronous reset** input that resets the count to `0` at the next positive clock edge.

## Module Functionality  

**Inputs:**  
- `clk` : Clock signal (positive edge-triggered)  
- `reset` : Synchronous reset signal  

**Output:**  
- `q` : 4-bit output representing the current counter value (`0` to `9`)

## Use Case  
Decade counters are useful in:
- Digital clocks (counting seconds, minutes, etc.)
- Frequency division by 10
- 7-segment display multiplexing
- Decimal digit counting applications

## File Included  

| File Name     | Description                             |
|---------------|-----------------------------------------|
| top_module.v  | Verilog module for mod-10 decade counter|

## Related HDLBits Exercise  
[Count10 – HDLBits](https://hdlbits.01xz.net/wiki/Count10)
