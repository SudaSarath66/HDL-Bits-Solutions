# Count15

## Overview  
This module implements a **4-bit binary counter** that counts from `0` to `15` inclusively in a loop. The counter increments on each **rising clock edge**, and a **synchronous reset** brings it back to `0`.

## Module Functionality  

**Inputs:**  
- `clk` : Clock input (rising edge-triggered)  
- `reset` : Synchronous reset signal  

**Output:**  
- `q` : 4-bit output representing the current counter value (`0` to `15`)

- The counter uses **modulo-16** arithmetic, meaning after reaching `1111` (`15`), it rolls over to `0000`.
- The `reset` being synchronous means it only takes effect **at the clock edge**, not immediately.

## Use Case  
Useful for simple counting applications in digital systems such as:
- Event counters
- Address generation for memory accesses
- Timing control loops
- Generating periodic signals of known duration (with optional further decoding)

## File Included  

| File Name     | Description                            |
|---------------|----------------------------------------|
| top_module.v  | Verilog code for 4-bit mod-16 counter  |

## Related HDLBits Exercise  
[Count15 – HDLBits](https://hdlbits.01xz.net/wiki/Count15)
