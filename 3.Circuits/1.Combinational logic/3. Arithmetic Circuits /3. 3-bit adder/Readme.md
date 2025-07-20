# ➕ Adder3 (3-bit Ripple Carry Adder)

## 📘 Overview
This project implements a **3-bit Ripple Carry Adder** using **three instances of full adders**. It adds two 3-bit numbers along with an initial carry-in, producing a 3-bit sum and a 3-bit carry-out vector. This design demonstrates hierarchical instantiation and modular reusability in Verilog.

## ⚙️ Module Functionality
- **Inputs**
  - `a[2:0]`: First 3-bit operand
  - `b[2:0]`: Second 3-bit operand
  - `cin`: Initial carry-in
- **Outputs**
  - `sum[2:0]`: 3-bit sum result
  - `cout[2:0]`: Carry-out from each full adder stage (`cout[2]` is final carry-out)

## 🧠 Logic Explanation
A ripple carry adder works by chaining full adders:
1. The first FA takes `a[0]`, `b[0]`, and `cin`.
2. The second FA uses the carry from the first as input.
3. The third FA continues the ripple.

Each full adder is built as:
```verilog
assign sum = a ^ b ^ cin;
assign cout = (a & b) | (b & cin) | (a & cin);
```

### Full Adder Instantiation (Pseudocode)
```verilog
full_adder fa0 (.a(a[0]), .b(b[0]), .cin(cin),     .sum(sum[0]), .cout(cout[0]));
full_adder fa1 (.a(a[1]), .b(b[1]), .cin(cout[0]), .sum(sum[1]), .cout(cout[1]));
full_adder fa2 (.a(a[2]), .b(b[2]), .cin(cout[1]), .sum(sum[2]), .cout(cout[2]));
```

## 💡 Use Case
Used in:
- ALUs and arithmetic blocks in processors
- Binary addition in digital calculators
- Building blocks for wider bit-width adders (e.g., 8/16/32-bit)

## 📁 File Included

| File Name | Description                           |
|-----------|---------------------------------------|
| adder3.v  | Verilog code for 3-bit ripple adder   |
| fadd.v    | Verilog code for full adder module    |

## 🧩 Related HDLBits Exercise
🔗 [HDLBits - adder3](https://hdlbits.01xz.net/wiki/Adder3)
