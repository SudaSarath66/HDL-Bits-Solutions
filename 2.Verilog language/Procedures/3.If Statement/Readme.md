# 2-to-1 Multiplexer using `assign` and `always if`

## Overview
This Verilog module implements a **2-to-1 multiplexer**, which selects between two 1-bit inputs (`a` and `b`) based on a combination of two selector signals. The multiplexer is implemented using two styles:
1. Continuous assignment with a conditional (ternary) operator
2. Combinational `always` block with an `if` statement

## Module Functionality

### top_module
- **Inputs:**
  - `a`, `b` — 1-bit data inputs
  - `sel_b1`, `sel_b2` — selector inputs
- **Outputs:**
  - `out_assign` — result of mux using `assign` statement
  - `out_always` — result of mux using procedural `if` statement

## Logic Explanation

- The output selects `b` **only when both** `sel_b1` and `sel_b2` are high.
- Otherwise, it selects `a`.

| Output Signal | Implementation Style         | Logic Description                                      |
|---------------|-------------------------------|--------------------------------------------------------|
| `out_assign`  | `assign` with ternary operator | `(sel_b1 && sel_b2) ? b : a`                          |
| `out_always`  | `always @(*)` with `if`        | `if (sel_b1 && sel_b2) out = b; else out = a;`        |

> Both implementations result in the same logic—a 2-to-1 mux with combined selector conditions.

## Use Case
Useful for selecting between two signals based on compound conditions, especially where control logic is based on multiple signals.

## File Included

| File Name       | Description                                |
|------------------|--------------------------------------------|
| `top_module.v`   | Verilog code for 2-to-1 multiplexer using assign and always-if |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Always_if](https://hdlbits.01xz.net/wiki/Always_if)
