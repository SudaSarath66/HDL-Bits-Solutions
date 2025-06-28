# Module Instantiation with Named Port Mapping

## Overview
This Verilog module instantiates the submodule `mod_a` and connects all ports by **name**, improving clarity and maintainability.

## Module Functionality
- **Module Name:** `top_module`
- **Inputs:**  
  - `a, b, c, d` — four 1-bit input signals
- **Outputs:**  
  - `out1, out2` — two 1-bit output signals

## Logic Explanation
- The ports of `mod_a` are connected by name as follows:
  - `.in1(a), .in2(b), .in3(c), .in4(d)`
  - `.out1(out1), .out2(out2)`

## Use Case
This module reinforces best practices by demonstrating named port connections, which are especially helpful in large designs or when module interfaces evolve.

## File Included

| File Name       | Description                                     |
|------------------|-------------------------------------------------|
| `top_module.v`   | Verilog code using named module instantiation   |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Module_name](https://hdlbits.01xz.net/wiki/Module_name)
