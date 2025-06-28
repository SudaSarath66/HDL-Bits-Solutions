# Module Instantiation with Positional Port Mapping

## Overview
This Verilog module instantiates a submodule (`mod_a`) and connects its ports by **position**. The submodule has two outputs followed by four inputs.

## Module Functionality
- **Module Name:** `top_module`
- **Inputs:**  
  - `a, b, c, d` — four 1-bit input signals
- **Outputs:**  
  - `out1, out2` — two 1-bit output signals

## Logic Explanation
- The submodule `mod_a` has the following port order:  
  `output, output, input, input, input, input`
- It is instantiated as:
  - `mod_a instance1 (out1, out2, a, b, c, d);`

## Use Case
This module demonstrates how to instantiate and connect submodule ports using positional mapping, useful for concise design when port order is known and fixed.

## File Included

| File Name       | Description                                    |
|------------------|------------------------------------------------|
| `top_module.v`   | Verilog code with positional module instantiation |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Module_pos](https://hdlbits.01xz.net/wiki/Module_pos)
