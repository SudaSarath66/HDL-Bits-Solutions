# Basic Logic Gate Implementation (`Gates`)

## Overview
This Verilog module implements **seven fundamental logic gate operations** using two binary inputs, `a` and `b`. Each output corresponds to a different combinational logic gate function.

## Module Functionality

### top_module
- **Inputs:**
  - `a` — 1-bit input
  - `b` — 1-bit input
- **Outputs:**
  - `out_and` — Logical AND of `a` and `b`
  - `out_or` — Logical OR of `a` and `b`
  - `out_xor` — Logical XOR of `a` and `b`
  - `out_nand` — Logical NAND of `a` and `b`
  - `out_nor` — Logical NOR of `a` and `b`
  - `out_xnor` — Logical XNOR of `a` and `b`
  - `out_anotb` — Logical A AND NOT B

## Logic Explanation

Each output is driven by a single-bit logic gate:

| Output Signal   | Operation             | Expression         |
|------------------|------------------------|---------------------|
| `out_and`       | AND                   | `a & b`             |
| `out_or`        | OR                    | `a | b`             |
| `out_xor`       | XOR                   | `a ^ b`             |
| `out_nand`      | NAND                  | `~(a & b)`          |
| `out_nor`       | NOR                   | `~(a | b)`          |
| `out_xnor`      | XNOR                  | `~(a ^ b)`          |
| `out_anotb`     | A AND NOT B           | `a & ~b`            |

This module demonstrates how each logic operation manipulates two inputs to produce a unique result.

## Use Case

This is a fundamental practice module to understand:
- The behavior of basic logic gates.
- Syntax of combinational logic implementation in Verilog.
- Multi-output combinational design.

## File Included

| File Name       | Description                                |
|------------------|--------------------------------------------|
| `top_module.v`   | Verilog module implementing 7 logic gates |

## Related HDLBits Exercise

This corresponds to the HDLBits problem:  
[Gates](https://hdlbits.01xz.net/wiki/Gates)
