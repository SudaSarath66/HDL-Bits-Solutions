# Mt2015_q4b – Waveform-Based Logic Function Implementation

## Overview  
This Verilog module implements a combinational logic function derived from a **simulation waveform** rather than a truth table or algebraic expression. The circuit behavior is inferred by observing how the output `z` responds to different combinations of the inputs `x` and `y` over time.

## Module Functionality

### top_module
- **Inputs:**
  - `x` — First input bit.
  - `y` — Second input bit.
- **Output:**
  - `z` — Output defined by a specific waveform behavior.

## Logic Explanation  
From waveform analysis, the behavior of `z` matches the expression:
- `z = (x & ~y) | (~x & y)`

This is the **exclusive OR (XOR)** operation:
- When `x` and `y` differ, `z = 1`.
- When `x` and `y` are the same, `z = 0`.

Thus, the waveform corresponds to:
- `z = x ^ y`

This logic detects mismatch between `x` and `y`.

## Use Case  
- Implements a fundamental mismatch detector or bit comparator.
- Widely used in parity checkers, error detection circuits, and control logic.
- Helps students understand waveform-to-expression mapping in digital systems.

## File Included

| File Name       | Description                              |
|------------------|------------------------------------------|
| `top_module.v`   | Implements XOR logic based on waveform behavior |

## Related HDLBits Exercise  
This implementation corresponds to the HDLBits problem:  
[Mt2015_q4b](https://hdlbits.01xz.net/wiki/Mt2015_q4b)
