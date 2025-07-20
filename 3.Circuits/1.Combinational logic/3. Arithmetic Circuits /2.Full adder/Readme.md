# ➕ Fadd (Full Adder)

## 📘 Overview
This project implements a **Full Adder**, which is a digital logic circuit used to add three 1-bit binary numbers — typically two significant bits and a carry-in from a previous addition stage. It outputs a **sum** and a **carry-out**.

## ⚙️ Module Functionality
- **Inputs**
  - `a`: 1-bit input
  - `b`: 1-bit input
  - `cin`: Carry-in (1-bit)
- **Outputs**
  - `sum`: Result of a ⊕ b ⊕ cin
  - `cout`: Carry-out for next stage

## 🧠 Logic Explanation
The full adder uses:
- `sum = a ^ b ^ cin` (XOR logic)
- `cout = (a & b) | (b & cin) | (a & cin)` (Majority logic)

```verilog
assign sum = a ^ b ^ cin;
assign cout = (a & b) | (b & cin) | (a & cin);
```

## 💡 Use Case
Full adders are used in:
- Arithmetic Logic Units (ALUs)
- Multi-bit binary adders (ripple carry adders, etc.)
- Binary counters
- Digital calculators and CPUs

## 📁 File Included

| File Name | Description            |
|-----------|------------------------|
| fadd.v    | Verilog code for Full Adder |

## 🧩 Related HDLBits Exercise
🔗 [HDLBits - fadd](https://hdlbits.01xz.net/wiki/Fadd)
