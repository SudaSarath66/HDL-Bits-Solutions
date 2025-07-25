# Exams/m2014_q4d – Set-once D Flip-Flop

## Title
Exams/m2014_q4d – Set-once D Flip-Flop

## Overview
This HDLBits problem implements a sequential circuit where a D flip-flop "remembers" if the input has ever been high. Once the input becomes 1, the output is latched to 1 and remains so forever. This behavior is commonly referred to as **set-once** or **latch-once** behavior without reset.

## Module Functionality
The module uses a positive edge-triggered D flip-flop. On every rising edge of the clock:
- If the input `in` is 1, the output `out` becomes 1.
- If the input `in` is 0, the output `out` remains unchanged.

This results in the output becoming 1 after the first 1 is seen on `in`, and staying at 1 thereafter.

## Logic Explanation
This is accomplished using the self-feedback logic:  
`out <= out | in;`  
This means:
- If `out` is already 1, it remains 1.
- If `in` is 1, `out` will be set to 1 regardless of its previous value.
- If both `out` and `in` are 0, it remains 0.

This forms a kind of memory latch that "remembers" if `in` was ever 1.

## Use Case
- Alarm/fault systems that need to indicate if a certain condition occurred.
- Simple event detection logic.
- Flip-flops that need to be permanently set by an event without reset.

## File Included

| File Name     | Description                            |
|---------------|----------------------------------------|
| `top_module.v`| Verilog code implementing the logic    |

## Related HDLBits Exercise

[Click here for HDLBits problem](https://hdlbits.01xz.net/wiki/Exams/m2014_q4d)


