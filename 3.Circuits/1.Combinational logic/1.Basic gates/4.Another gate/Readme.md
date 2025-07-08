# AND-NOT Gate Implementation (`m2014_q4f`)

## Overview
This Verilog module implements a **custom 2-input logic gate** using an AND operation combined with a NOT gate. The output is high (`1`) only when `in1` is high (`1`) and `in2` is low (`0`). This function is often referred to as an **"AND with NOT"** or **"Inhibit Gate"**.

## Module Functionality

### top_module
- **Inputs:**
  - `in1` — First input bit
  - `in2` — Second input bit
- **Output:**
  - `out` — Output of the `in1 AND NOT in2` operation

## Logic Explanation

- The expression `assign out = in1 & ~in2;` computes the bitwise AND between `in1` and the negated `in2`.
- Logical expression:
  \[
  \text{out} = in1 \land \lnot in2
  \]
- The output is `1` only when:
  - `in1 = 1`
  - `in2 = 0`
- For all other input combinations, the output is `0`.

## Use Case

This gate is useful in:
- Control logic where a signal should be allowed only when a condition is **not** active.
- Implementing enable signals with blocking conditions.
- Logic inhibition in hardware filters or priority circuits.

## File Included

| File Name       | Description                        |
|------------------|------------------------------------|
| `top_module.v`   | Implements `in1 & ~in2` logic gate |

## Related HDLBits Exercise

This corresponds to the HDLBits problem:  
[Exams/m2014_q4f](https://hdlbits.01xz.net/wiki/Exams/m2014_q4f)
