# AND Gate using `assign` and `always @(*)`

## Overview
This Verilog module demonstrates two methods for implementing a **combinational AND gate**: using a continuous assignment (`assign`) and using a **combinational `always @(*)` block**. Both approaches synthesize the same hardware but follow different syntactical styles.

## Module Functionality

### top_module
- **Inputs:**
  - `a` — 1-bit input
  - `b` — 1-bit input
- **Outputs:**
  - `out_assign` — result of `a & b` using `assign` statement
  - `out_alwaysblock` — result of `a & b` using `always @(*)` block

## Logic Explanation

| Signal             | Implementation Style | Description                           |
|--------------------|----------------------|---------------------------------------|
| `out_assign`       | `assign` statement   | Evaluates `a & b` directly            |
| `out_alwaysblock`  | `always @(*)` block  | Computes `a & b` using procedural logic |

- **assign:** Requires `wire` type on the left-hand side.
- **always @(*)**: Requires `reg` type on the left-hand side.
- Both implementations are equivalent and synthesizable.

## Use Case
This module is useful for learning the syntactic differences between continuous and procedural assignments in combinational logic. It also clarifies the role of `wire` and `reg` data types in Verilog.

## File Included

| File Name       | Description                             |
|------------------|-----------------------------------------|
| `top_module.v`   | Verilog code using both `assign` and `always` for AND logic |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Alwaysblock1](https://hdlbits.01xz.net/wiki/Alwaysblock1)
