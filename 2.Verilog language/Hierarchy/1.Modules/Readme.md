# Module Instantiation Practice

## Overview
This Verilog module demonstrates how to instantiate another module (`mod_a`) and connect its ports using position-based connections.

## Module Functionality
- **Module Name:** `top_module`
- **Inputs:**  
  - `a, b` — two 1-bit input signals
- **Output:**  
  - `out` — 1-bit output signal

## Logic Explanation
- An instance of `mod_a` is created using position-based port connections:
  - `mod_a instance1 (a, b, out);`

## Use Case
This module practices hierarchical design by instantiating a submodule and wiring it to the top-level ports. It demonstrates modularity and reuse in Verilog.

## File Included

| File Name       | Description                          |
|------------------|--------------------------------------|
| `top_module.v`   | Verilog code with module instantiation |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Module](https://hdlbits.01xz.net/wiki/Module)
