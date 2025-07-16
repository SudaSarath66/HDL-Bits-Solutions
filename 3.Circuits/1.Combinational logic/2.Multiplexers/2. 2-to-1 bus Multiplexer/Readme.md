# Mux2to1v – 100‑bit Wide 2‑to‑1 Multiplexer

## Overview  
This Verilog module implements a **100-bit wide, 2-to-1 multiplexer**. It selects between two 100-bit input vectors `a` and `b` based on a single-bit select signal `sel`. The output vector `out` mirrors the selected input vector.

## Module Functionality

### top_module
- **Inputs:**
  - `a[99:0]` — First 100-bit input vector.
  - `b[99:0]` — Second 100-bit input vector.
  - `sel` — Select signal to choose between `a` and `b`.
- **Output:**
  - `out[99:0]` — Output vector assigned from either `a` or `b`.

## Logic Explanation  
The multiplexer uses a conditional (ternary) operator for full-vector selection:

- `out = sel ? b : a;`

This efficiently routes the selected 100-bit vector to the output:
- If `sel = 0` → `out = a`
- If `sel = 1` → `out = b`

This avoids writing 100 individual bit assignments by using vector-wide operations.

## Use Case  
- Used in large datapath routing, register selection, or memory access control.
- Demonstrates scalable vector MUX design in Verilog.
- Foundation for building configurable logic blocks and dynamic selectors.

## File Included

| File Name       | Description                                   |
|------------------|-----------------------------------------------|
| `top_module.v`   | Implements 100-bit 2-to-1 multiplexer logic   |

## Related HDLBits Exercise  
This implementation corresponds to the HDLBits problem:  
[Mux2to1v](https://hdlbits.01xz.net/wiki/Mux2to1v)
