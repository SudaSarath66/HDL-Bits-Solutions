# Kmap3

## Overview  
This module implements a simplified combinational logic circuit based on a given 3-variable Karnaugh Map (K-map). The goal is to minimize the logic expression using K-map and implement the result in Verilog.

## Module Functionality  
**Inputs:**  
- `a` : Input bit  
- `b` : Input bit  
- `c` : Input bit  

**Output:**  
- `out` : Output bit calculated using the simplified Boolean expression from the K-map.

## Logic Explanation  
The Karnaugh Map for this module is given (assumed from HDLBits):

```
      bc
     00 01 11 10
a = 0  1  1  1  1
a = 1  1  0  0  0
```

We analyze the map for logic simplification:

**Row a = 0:** All outputs are `1` → Covers all combinations of `b` and `c` when `a=0`.  
**Row a = 1:** Only one cell (`b=0, c=0`) is `1`, the rest are `0`.

Thus, the simplified expression is:

```
out = ~a + (~b & ~c)
```

This is a **Sum of Products (SOP)** form and is efficient for gate-level implementation.

## Use Case  
This logic circuit demonstrates how K-map simplification can reduce hardware complexity by minimizing the number of logic gates used. It's a fundamental concept used in digital circuit design to improve performance and reduce cost in FPGAs, ASICs, and other digital systems.

## File Included  

| File Name     | Description                            |
|---------------|----------------------------------------|
| top_module.v  | Verilog module implementing Kmap3 logic|

## Related HDLBits Exercise  
[Kmap3 – HDLBits](https://hdlbits.01xz.net/wiki/Kmap3)
