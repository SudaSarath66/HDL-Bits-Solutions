# Minimum of Four 8-bit Inputs using Conditional Operator (`conditional`)

## Overview
This module determines the **minimum value** among four 8-bit inputs (`a`, `b`, `c`, `d`) using Verilog's **ternary conditional operator (`? :`)**.

## Module Functionality

### top_module
- **Inputs:**
  - `a`, `b`, `c`, `d` — Four 8-bit unsigned inputs
- **Output:**
  - `min` — The minimum value among `a`, `b`, `c`, and `d`

## Logic Explanation

The module uses chained conditional (ternary) expressions to successively compare values:

1. `w1 = (a < b) ? a : b;`  
   → minimum of `a` and `b`
2. `w2 = (c < w1) ? c : w1;`  
   → minimum of `a`, `b`, and `c`
3. `w3 = (d < w2) ? d : w2;`  
   → minimum of all four inputs

Final result `min = w3`.

This avoids using `always` blocks and is purely **combinational** logic via `assign` statements.

## Use Case

Efficiently used in:
- Sorting logic
- Signal comparison circuits
- Priority determination logic

## File Included

| File Name       | Description                           |
|------------------|---------------------------------------|
| `top_module.v`   | Verilog module to find minimum value  |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Conditional](https://hdlbits.01xz.net/wiki/Conditional)
