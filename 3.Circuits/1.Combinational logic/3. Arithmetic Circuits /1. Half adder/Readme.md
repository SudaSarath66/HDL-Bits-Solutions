# ➕ Hadd (Half Adder)

## 📘 Overview
This project implements a **Half Adder**, a basic combinational logic circuit that adds two single-bit binary inputs and produces a **sum** and a **carry-out**. It’s one of the fundamental building blocks for designing arithmetic circuits like full adders and ALUs.

## ⚙️ Module Functionality
- **Inputs**
  - `a`: 1-bit input
  - `b`: 1-bit input
- **Outputs**
  - `sum`: Result of a ⊕ b
  - `cout`: Carry-out (a & b)

## 🧠 Logic Explanation
The half adder performs:
- `sum = a ^ b` (XOR for sum)
- `cout = a & b` (AND for carry)

```verilog
assign sum = a ^ b;
assign cout = a & b;
```

## 💡 Use Case
Half adders are used in:
- Digital arithmetic circuits
- Bitwise adders
- Construction of full adders
- Educational tools for learning digital logic

## 📁 File Included

| File Name | Description              |
|-----------|--------------------------|
| hadd.v    | Verilog code for Half Adder |

## 🧩 Related HDLBits Exercise
🔗 [HDLBits - hadd](https://hdlbits.01xz.net/wiki/Hadd)
