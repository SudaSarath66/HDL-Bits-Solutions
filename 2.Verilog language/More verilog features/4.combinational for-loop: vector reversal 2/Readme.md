# Reverse a 100-bit Vector (`vector100r`)

## Overview
This Verilog module reverses the order of bits in a 100-bit input vector. It assigns the most significant bit of the input to the least significant bit of the output and vice versa, effectively flipping the vector.

## Module Functionality

### top_module
- **Input:**
  - `in` — 100-bit input vector (`[99:0]`)
- **Output:**
  - `out` — 100-bit output vector with reversed bit order

## Logic Explanation

The `for` loop inside a combinational `always @(*)` block iterates over all 100 bits. It assigns `out[i]` with `in[99 - i]` so that:
- `out[0]` gets `in[99]`
- `out[1]` gets `in[98]`
- ...
- `out[99]` gets `in[0]`

This results in a complete bitwise reversal of the input vector.

### Example:
If  
`in  = 100'b100...0001`  
then  
`out = 100'b100...0001` (a palindrome)  
If  
`in  = 100'b000...0001`  
then  
`out = 100'b100...0000`

## Use Case

This is useful in:
- Bit manipulation algorithms  
- Data format conversions (e.g., LSB to MSB reordering)
- Serial-to-parallel or parallel-to-serial conversions

## File Included

| File Name       | Description                         |
|------------------|-------------------------------------|
| `top_module.v`   | Verilog code to reverse 100-bit vector |

## Related HDLBits Exercise
This corresponds to the HDLBits problem:  
[Vector100r](https://hdlbits.01xz.net/wiki/Vector100r)
