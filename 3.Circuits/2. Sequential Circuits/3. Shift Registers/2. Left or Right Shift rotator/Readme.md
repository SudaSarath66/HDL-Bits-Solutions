# Rotate100

## Overview
Implements a 100-bit rotator with synchronous load and selectable left/right rotation. Unlike a shifter that discards bits, a rotator wraps the bit around from one end to the other. Useful for applications requiring circular data movement such as cryptographic transformations, buffer management, or rotating registers in pipelined designs.

## Module Functionality
- **load**: When high, loads the value from `data[99:0]` into the output `q` synchronously.
- **ena[1:0]**: Controls the direction of rotation:
  - `2'b01`: Rotate right by 1 bit
  - `2'b10`: Rotate left by 1 bit
  - `2'b00` or `2'b11`: No rotation
- **clk**: Positive-edge triggered clock
- **q[99:0]**: Output rotator register

## Logic Explanation
The design uses a `case` block inside an always block triggered by the positive edge of the clock. If `load` is high, it directly assigns `q = data`. If `ena` is `2'b01`, a right rotation is performed by taking `q[0]` and placing it at the MSB while shifting other bits to the right. Similarly, for `2'b10`, left rotation is done by taking `q[99]` and placing it at the LSB.

## Use Case
Circular buffers, rotating cryptographic keys, image processing shift operations, and low-level bit manipulations in DSP or control applications where wrap-around data movement is critical.

## File Included

| File Name   | Description                         |
|-------------|-------------------------------------|
| Rotate100.v | Verilog module implementing rotator |

## Related HDLBits Exercise
[Rotate100 - HDLBits](https://hdlbits.01xz.net/wiki/Rotate100)
