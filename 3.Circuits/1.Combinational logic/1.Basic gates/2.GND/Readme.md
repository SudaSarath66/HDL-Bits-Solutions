# Constant Zero Output (`m2014_q4i`)

## Overview
This Verilog module generates a **constant logic level '0'** at its output. It is commonly used for initializing or forcing a line low in digital designs.

## Module Functionality

### top_module
- **Output:**
  - `out` — A single-bit output that is hardwired to logic `0`

## Logic Explanation

- The statement `assign out = 1'b0;` continuously drives the output pin `out` with a logic `0`.
- This is a **constant assignment** and does not depend on any inputs.
- Such a module synthesizes to a simple tie-down to ground in hardware.

## Use Case

This type of circuit is used in:
- Control logic where a default or disabled signal is required
- Initializing lines in testbenches or simple logic verification
- Forcing reset signals low
- Replacing unused logic branches during synthesis

## File Included

| File Name       | Description                  |
|------------------|------------------------------|
| `top_module.v`   | Constant logic-0 output module |

## Related HDLBits Exercise
This corresponds to the HDLBits problem:  
[Exams/m2014_q4i](https://hdlbits.01xz.net/wiki/Exams/m2014_q4i)
