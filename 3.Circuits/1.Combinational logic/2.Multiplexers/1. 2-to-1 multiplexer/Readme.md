# Mux2to1 – 1‑bit 2‑to‑1 Multiplexer

## Overview  
This Verilog module implements a **1-bit wide, 2-to-1 multiplexer**. It selects one of the two input signals (`a` or `b`) based on the control signal `sel`. The output reflects the value of `a` when `sel = 0`, and the value of `b` when `sel = 1`.

## Module Functionality

### top_module
- **Inputs:**
  - `a` — First input.
  - `b` — Second input.
  - `sel` — Select line to choose between `a` and `b`.
- **Output:**
  - `out` — Output based on selected input.

## Logic Explanation  
The multiplexer logic is implemented using the conditional (ternary) operator:

- `out = sel ? b : a;`

This is equivalent to:
- `out = (sel & b) | (~sel & a);`

When:
- `sel = 0` → `out = a`
- `sel = 1` → `out = b`

This is a fundamental building block in digital systems, used for conditional data routing.

## Use Case  
- Common in control logic, ALUs, and data path selection.
- Basis for designing larger MUX trees and configurable logic.
- Excellent practice for understanding conditional assignment in Verilog.

## File Included

| File Name       | Description                              |
|------------------|------------------------------------------|
| `top_module.v`   | Implements 1-bit 2-to-1 multiplexer logic |

## Related HDLBits Exercise  
This implementation corresponds to the HDLBits problem:  
[Mux2to1](https://hdlbits.01xz.net/wiki/Mux2to1)
