# Title
ECE241 2014 Q7a – 1 to 12 Synchronous Counter using count4

# Overview
Design a 4-bit counter that counts from 1 to 12 repeatedly. The counter should:
- Reset to 1 when `Reset` is high.
- Count when `Enable` is high.
- Operate on the positive edge of `Clk`.
- Use a provided `count4` module that supports `enable`, `load`, and a 4-bit parallel data input `d`.
  
Also generate control signals:
- `c_enable`: enable signal to internal counter.
- `c_load`: load signal to internal counter.
- `c_d[3:0]`: data input to the internal counter.

# Module Functionality
The top-level module controls the `count4` instance to implement a modulo-12 counter (1 to 12). The `count4` is instructed to:
- Load `1` on reset.
- Load `1` when current count is `12` and `Enable` is high (to wrap to 1).
- Count up otherwise when `Enable` is high.

# Logic Explanation
- A synchronous reset overrides all, and loads 1.
- If current count is 12 and Enable is high, load 1 to wrap.
- If Enable is high, enable internal counting.
- The `count4` handles binary counting internally, so the top module just manages when to load or count.

# Use Case
This design demonstrates how to wrap a binary counter to implement a custom-count modulo counter using control signals and a pre-existing submodule.

# File Included

| File Name     | Description                           |
|---------------|---------------------------------------|
| top_module.v  | Top-level wrapper controlling count4  |
| count4.v      | Provided 4-bit counter module         |

# Related HDLBits Exercise
[HDLBits ECE241 2014 Q7a](https://hdlbits.01xz.net/wiki/Ece241_2014_q7a)
