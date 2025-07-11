# Truth Table Based Circuit – Sum of Products Logic

## Overview
This Verilog module implements a **combinational logic circuit** using the **sum-of-products (SOP)** approach based on a specified truth table. It features three inputs and one output. The output is high (`1`) for selected input combinations, replicating the behavior defined in the truth table.

## Module Functionality

### top_module
- **Inputs:**
  - `x3`, `x2`, `x1` — 3 input signals to the combinational logic circuit.
- **Output:**
  - `f` — Output that becomes `1` for specific input combinations defined by the truth table.

## Logic Explanation

The circuit implements the following truth table:

- `f = 1` for the following input combinations:
  - Row 2: `x3=0`, `x2=1`, `x1=0`
  - Row 3: `x3=0`, `x2=1`, `x1=1`
  - Row 5: `x3=1`, `x2=0`, `x1=1`
  - Row 7: `x3=1`, `x2=1`, `x1=1`

This results in the following **sum-of-products** expression:
- `f = (~x3 &  x2 & ~x1) | (~x3 &  x2 &  x1) | (x3 & ~x2 & x1) | (x3 & x2 & x1)`

This expression uses `AND`, `OR`, and `NOT` logic gates and is implemented purely as a combinational logic circuit.

## Use Case

- Ideal for learning how to implement logic functions from truth tables.
- Demonstrates SOP logic synthesis using only standard gates.
- Can be used in digital design, combinational logic simulation, and educational assignments.

## File Included

| File Name       | Description                                      |
|------------------|--------------------------------------------------|
| `top_module.v`   | Implements the SOP logic for the given truth table |

## Related HDLBits Exercise

This implementation corresponds to the HDLBits problem:  
[Truthtable1](https://hdlbits.01xz.net/wiki/Truthtable1)
