# Three-Input XNOR-XOR Logic Implementation (`m2014_q4g`)

## Overview
This Verilog module implements a **combinational logic circuit** that takes three input signals and applies a specific combination of **XNOR** and **XOR** gates to compute the final output. The logic design follows the structure shown in the [HDLBits problem diagram](https://hdlbits.01xz.net/wiki/File:Exams_m2014q4g.png).

## Module Functionality

### top_module
- **Inputs:**
  - `in1` — First input bit
  - `in2` — Second input bit
  - `in3` — Third input bit
- **Output:**
  - `out` — Result of the XNOR of `in1` and `in2`, XORed with `in3`

## Logic Explanation

1. Compute intermediate signal:
   - `w1 = in1 ~^ in2` (XNOR)
2. Compute final output:
   - `out = w1 ^ in3` (XOR)
3. Combined logic equation:
   \[
   \text{out} = (in1 ~^ in2) \oplus in3
   \]

### Gate Functions Used
- **XNOR (`~^`)**: Outputs `1` when inputs are equal.
- **XOR (`^`)**: Outputs `1` when inputs are different.

## Use Case

This type of logic circuit is commonly used in:
- Parity bit generation
- Digital comparators
- Error detection circuits

## File Included

| File Name       | Description                                           |
|------------------|-------------------------------------------------------|
| `top_module.v`   | Implements XNOR between `in1` and `in2`, then XORs with `in3` |

## Related HDLBits Exercise

This corresponds to the HDLBits problem:  
[Exams/m2014_q4g](https://hdlbits.01xz.net/wiki/Exams/m2014_q4g)
