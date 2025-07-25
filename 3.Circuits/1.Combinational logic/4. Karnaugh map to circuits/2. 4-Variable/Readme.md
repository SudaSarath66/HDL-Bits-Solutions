# Kmap2 – 4-variable Karnaugh Map Logic Simplification

This module implements a digital logic circuit based on a 4-variable Karnaugh Map (K-map). The logic is simplified using the Sum of Products (SOP) method to optimize gate count and performance. This task focuses on translating a minimized Boolean function into Verilog HDL.

**Module Functionality**:  
Inputs:  
- `a`: 1-bit input  
- `b`: 1-bit input  
- `c`: 1-bit input  
- `d`: 1-bit input  

Output:  
- `out`: 1-bit output that evaluates the simplified logic from the 4-variable K-map

This expression is directly implemented using a single `assign` statement in Verilog.

**Use Case**:  
Used for minimizing logic in systems involving 4-variable conditions like control logic, state machines, and digital encoders/decoders in FPGA/ASIC design.

**File Included**:  
| File Name     | Description                                        |
|---------------|----------------------------------------------------|
| `top_module.v`| Verilog module implementing 4-variable K-map logic |

**Related HDLBits Exercise**:  
[Kmap2 - HDLBits](https://hdlbits.01xz.net/wiki/Kmap2)

