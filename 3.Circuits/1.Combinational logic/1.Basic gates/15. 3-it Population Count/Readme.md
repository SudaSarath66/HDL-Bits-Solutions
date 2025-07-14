# Popcount3 – 3‑bit Population Count Circuit

## Overview  
This Verilog module implements a **population count (popcount)** function that counts how many bits are set to `1` in a 3‑bit input vector. The result, ranging from `0` to `3`, is provided on a 2‑bit output.

## Module Functionality

### top_module
- **Input:**
  - `in[2:0]` — 3‑bit vector whose ‘1’ bits are to be counted.
- **Output:**
  - `out[1:0]` — 2‑bit result representing the number of ‘1’s in `in`.

## Logic Explanation  
The simplest combinational implementation sums the individual bits:

- `out = in[0] + in[1] + in[2];`

Because the maximum sum is `3`, a 2‑bit output (`00`, `01`, `10`, `11`) suffices. Internally, the addition operator synthesizes a small adder.

Alternate gate‑level view:
- `sum0 = in[0] ^ in[1];`
- `carry0 = in[0] & in[1];`
- `out[0] = sum0 ^ in[2];`
- `out[1] = carry0 | (sum0 & in[2]);`

Either approach produces the same 2‑bit population count.

## Use Case  
- Common in digital signal processing, error‑correction, and cryptography.
- Serves as a building block for larger popcount units (e.g., 8‑, 16‑, 32‑bit).
- Illustrates efficient bit‑summation using simple combinational logic.

## File Included

| File Name       | Description                                     |
|-----------------|-------------------------------------------------|
| `top_module.v`  | Implements 3‑bit population count (`0`–`3`)     |

## Related HDLBits Exercise  
This implementation corresponds to the HDLBits problem:  
[Popcount3](https://hdlbits.01xz.net/wiki/Popcount3)
