# Kmap4

## Overview  
This module implements a combinational logic circuit based on a 4-variable Karnaugh Map (K-map). The circuit is minimized using Boolean algebra to reduce the number of gates and optimize performance.

## Module Functionality  

**Inputs:**  
- `a`, `b`, `c`, `d` : 4 input bits  

**Output:**  
- `out` : Output bit derived from the simplified Boolean expression from the K-map.

## Logic Explanation  
The Karnaugh Map is assumed from the HDLBits Kmap4 problem as:

```
       cd
      00 01 11 10
ab
00    1  1  1  1
01    1  0  0  1
11    1  0  0  1
10    1  1  1  1
```

### Step-by-step simplification:

From visual grouping:

- Rows `ab = 00` and `ab = 10` have all 1s → common in `a = 0` or `a = 1 and b = 0` → covers:  
  **(a=0) + (a=1 & b=0) → ~a + (~b & a)**  
  This simplifies to: `~a + (~b & a)` = `~a + a & ~b` = `(~a + ~b)` by the Distributive Law.

- The center four 0s (when `ab` = 01 or 11, `cd` = 01 or 11) are avoided by choosing correct groups.

Another term observed: when `cd = 00` or `10` → covers cases when `~d`.

But overall best simplified logic is:
```
out = (~b & ~c) | (~a & ~d) | (~a & ~c) | (~c & ~d)
```

This covers all 1's of the K-map in minimal form.

## Use Case  
This example teaches logic minimization using a 4-variable Karnaugh Map. Such logic reduction is widely used in digital hardware design, especially for FPGAs, PLDs, and ASICs, where optimization can save area, power, and improve speed.

## File Included  

| File Name     | Description                             |
|---------------|-----------------------------------------|
| top_module.v  | Verilog module implementing Kmap4 logic |

## Related HDLBits Exercise  
[Kmap4 – HDLBits](https://hdlbits.01xz.net/wiki/Kmap4)
