# Even Parity Bit Generator using Reduction XOR (`reduction`)

## Overview
This Verilog module calculates the **even parity bit** of an 8-bit input vector using a **reduction XOR (`^`)** operator. Even parity means the number of 1's in the 9-bit word (8 data bits + parity) is even.

## Module Functionality

### top_module
- **Input:**
  - `in` — 8-bit data input
- **Output:**
  - `parity` — 1-bit output that represents the **even parity** of the input

## Logic Explanation

Verilog provides **reduction operators** that reduce a vector to a single bit by applying a bitwise operation across all bits:
- `^in` = `in[7] ^ in[6] ^ ... ^ in[0]`

This returns `1` if the number of 1’s in `in` is odd (hence, parity bit is `1` to make total even), and `0` otherwise.

### Behavior:
- Input `in = 8'b01010101` → `parity = 0` (even number of 1's)
- Input `in = 8'b01010111` → `parity = 1` (odd number of 1's)

## Use Case

Used in:
- Communication systems (UART, SPI)
- Memory systems for error detection
- Data integrity checking

## File Included

| File Name       | Description                    |
|------------------|--------------------------------|
| `top_module.v`   | Verilog module for parity check |

## Related HDLBits Exercise
This corresponds to the HDLBits problem:  
[Reduction](https://hdlbits.01xz.net/wiki/Reduction)
