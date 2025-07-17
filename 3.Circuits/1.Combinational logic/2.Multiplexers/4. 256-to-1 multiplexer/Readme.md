# 🔀 Mux256to1

## 📘 Overview
This project implements a 1-bit wide, 256-to-1 multiplexer. It takes a 256-bit input and uses an 8-bit select line to output a single bit from the selected index.

## ⚙️ Module Functionality
- **Inputs**
  - `in [255:0]`: 256-bit input vector.
  - `sel [7:0]`: 8-bit select signal.
- **Output**
  - `out`: Selected 1-bit output from the input vector.

## 🧠 Logic Explanation
The module directly selects the indexed bit from the input vector using Verilog indexing syntax. For example, if `sel = 8'd10`, then `out = in[10]`.

## 💡 Use Case
This type of multiplexer is commonly used in control logic, register file reads, and programmable logic routing where a single line among many needs to be selected dynamically.

## 📁 File Included

| File Name     | Description                        |
|---------------|------------------------------------|
| mux256to1.v   | Verilog code for 256-to-1 Mux      |

## 🧩 Related HDLBits Exercise
🔗 [HDLBits - mux256to1](https://hdlbits.01xz.net/wiki/Mux256to1)
