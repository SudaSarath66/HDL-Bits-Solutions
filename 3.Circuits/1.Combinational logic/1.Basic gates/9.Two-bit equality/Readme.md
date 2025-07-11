# Mt2015_eq2 – 2‑bit Equality 

## Overview
This Verilog module implements a **2‑bit equality **. It receives two 2‑bit input vectors, `A[1:0]` and `B[1:0]`, and produces a single‑bit output `z`. The output is asserted (`1`) when the two inputs are identical and de‑asserted (`0`) otherwise.

## Module Functionality

### top_module
- **Inputs:**
  - `A[1:0]` — First 2‑bit operand.
  - `B[1:0]` — Second 2‑bit operand.
- **Output:**
  - `z` — Equality flag (`1` if `A` equals `B`, else `0`).

## Logic Explanation
Equality is detected by comparing each corresponding bit of the two inputs and ensuring **all** pairs match:

- Bit‑wise comparison:  
  - `~(A[1] ^ B[1])` — High when MSBs are equal.  
  - `~(A[0] ^ B[0])` — High when LSBs are equal.
- Overall equality:  
  - `z = ~(A[1] ^ B[1]) & ~(A[0] ^ B[0])`

This is equivalent to an **XNOR** on each bit followed by an **AND** of the results. The circuit is purely combinational.

## Use Case
- Commonly used in finite‑state machines and digital processors for equality checks.
- Demonstrates basic comparator design for educational labs and HDL practice.
- Serves as a building block in larger arithmetic or control circuits.

## File Included

| File Name       | Description                                      |
|-----------------|--------------------------------------------------|
| `top_module.v`  | Implements the 2‑bit equality comparator logic   |

## Related HDLBits Exercise
This implementation corresponds to the HDLBits problem:  
[Mt2015_eq2](https://hdlbits.01xz.net/wiki/Mt2015_eq2)
