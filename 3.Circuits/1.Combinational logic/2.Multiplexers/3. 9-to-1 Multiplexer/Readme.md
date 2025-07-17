# 🔀 Mux9to1v

## Overview
Create a 16-bit wide, 9-to-1 multiplexer. When `sel=0` chooses input `a`, `sel=1` chooses input `b`, ..., up to `sel=8` which chooses `i`. If `sel` is from 9 to 15 (undefined inputs), the output should be all `1`s.

## Module Functionality
- Inputs: `a` through `i` as 16-bit inputs
- Selector: 4-bit `sel`
- Output: 16-bit `out` depending on `sel`

## Logic Explanation
The multiplexer uses a `case` statement on `sel`. For values 0 to 8, the respective input is assigned to `out`. For any other values, a 16-bit vector of all 1s (`16'hFFFF`) is assigned to `out`.

## Use Case
Used in digital systems where multiple 16-bit inputs need to be selected based on control logic. Useful in arithmetic units, instruction decoders, and configurable datapaths.

## File Included

| File Name     | Description                    |
|---------------|--------------------------------|
| `mux9to1v.sv` | Verilog code for 9-to-1 mux    |

## Related HDLBits Exercise

**HDLBits Link**: [Mux9to1v - HDLBits](https://hdlbits.01xz.net/wiki/Mux9to1v)
