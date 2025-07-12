# Mt2015_q4 – Hierarchical Circuit Using Submodules A and B

## Overview  
This Verilog module builds a **hierarchical combinational circuit** by instantiating submodules from previous questions: `mt2015_q4a` (Module A) and `mt2015_q4b` (Module B). The top-level circuit combines two instances of each submodule to construct a more complex logic function, demonstrating the concept of **modular design** in digital systems.

## Module Functionality

### top_module
- **Inputs:**
  - `w`, `x`, `y`, `z` — Four input signals.
- **Output:**
  - `out` — Final output derived from interconnecting submodules A and B.

## Logic Explanation  
The top-level circuit is composed as follows:
1. **Module A instances:**
   - `a1` computes: `a_out = (w ^ x) & w`
   - `a2` computes: `b_out = (y ^ z) & y`
2. **Module B instances:**
   - `b1` computes: `b1_out = a_out ^ b_out`
   - `b2` computes: `out = b1_out ^ b_out`

**Final Output Expression:**
- `out = ((w ^ x) & w) ^ ((y ^ z) & y) ^ ((y ^ z) & y)`

This structure emphasizes **module reuse** and demonstrates how submodules can be composed to form higher-level logic functions.

## Use Case  
- Demonstrates hierarchical and modular design in Verilog.
- Helps in understanding instantiation and signal wiring between submodules.
- Useful for building scalable digital designs using reusable logic blocks.

## File Included

| File Name       | Description                                        |
|------------------|----------------------------------------------------|
| `top_module.v`   | Top-level module using two instances of modules A and B |

## Related HDLBits Exercise  
This implementation corresponds to the HDLBits problem:  
[Mt2015_q4](https://hdlbits.01xz.net/wiki/Mt2015_q4)
