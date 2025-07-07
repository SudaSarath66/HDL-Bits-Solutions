# NOR Gate Implementation (`m2014_q4e`)

## Overview
This Verilog module implements a **2-input NOR gate**, which outputs logic high (`1`) only when both inputs are low (`0`). It is a fundamental digital gate used in combinational logic design.

## Module Functionality

### top_module
- **Inputs:**
  - `in1` — First input bit
  - `in2` — Second input bit
- **Output:**
  - `out` — Output of the NOR operation

## Logic Explanation

- The statement `assign out = ~(in1 | in2);` performs a bitwise OR between `in1` and `in2`, and then negates the result.
- This is equivalent to a **NOR gate**:  
  \[
  \text{out} = \overline{in1 + in2}
  \]
- The output is `1` only when both `in1` and `in2` are `0`; otherwise, it is `0`.

## Use Case

The NOR gate is commonly used in:
- Basic combinational logic circuits
- SR latch design (when paired with another NOR)
- Logic minimization and simplification
- Synthesis of universal logic circuits (NOR is functionally complete)

## File Included

| File Name       | Description             |
|------------------|-------------------------|
| `top_module.v`   | 2-input NOR gate module |

## Related HDLBits Exercise
This corresponds to the HDLBits problem:  
[Exams/m2014_q4e](https://hdlbits.01xz.net/wiki/Exams/m2014_q4e)
