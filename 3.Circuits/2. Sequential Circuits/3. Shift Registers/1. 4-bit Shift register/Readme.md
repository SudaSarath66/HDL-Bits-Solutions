# Shift4 – 4-bit Shift Register with Reset, Load, and Enable

## Overview
This module implements a 4-bit shift register capable of:
- Asynchronous reset to zero
- Synchronous load from input
- Right shift operation with enable control

## Module Functionality
- **Asynchronous Reset (`areset`)**: Instantly clears the register to 4'b0000.
- **Synchronous Load (`load`)**: Loads external 4-bit data into the register on the rising clock edge.
- **Enable (`ena`)**: If asserted, performs a right shift where `q[3]` becomes 0, `q[2:0]` are shifted, and `q[0]` is lost.

### Priority:
- `areset` has highest priority (asynchronous)
- Then `load`
- Then `ena` (shift)

## Logic Explanation
The register reacts to inputs based on the following hierarchy:
1. **Asynchronous reset**: Overrides everything and clears register.
2. **Synchronous load**: On positive clock edge, loads `data` into register.
3. **Shift operation**: If enabled, on clock edge, shifts bits right and sets MSB to 0.

## Use Case
This shift register is useful in serial data processing, digital communication systems, or FSM-based designs where bits need to be shifted and controlled with load/reset conditions.

## File Included

| File Name       | Description                      |
|----------------|----------------------------------|
| `shift4.v`      | Verilog HDL code for the shift register |

## Related HDLBits Exercise
- [HDLBits: Shift4](https://hdlbits.01xz.net/wiki/Shift4)
