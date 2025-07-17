# 🔀 Mux256to1v

## 📘 Overview
This project implements a 4-bit wide, 256-to-1 multiplexer. It takes a 1024-bit input vector, where each 4-bit chunk represents an input. Based on the 8-bit select signal, one of the 256 4-bit inputs is selected and passed to the output.

## ⚙️ Module Functionality
- **Inputs**
  - `in [1023:0]`: 1024-bit input vector, packed with 256 4-bit values.
  - `sel [7:0]`: 8-bit selector to choose one of the 256 inputs.
- **Output**
  - `out [3:0]`: Selected 4-bit output.

## 🧠 Logic Explanation
The logic extracts 4 bits at a time using `sel` to calculate the correct slice:
```verilog
assign out = in[sel*4 +: 4];
```
This uses Verilog's **bit-select with offset** syntax to slice the correct 4-bit word. For example, if `sel = 3`, it returns `in[15:12]`.

## 💡 Use Case
Useful in applications requiring large-scale selection logic, such as:
- Register file selection
- Data routing in FPGAs
- Memory decoding logic

## 📁 File Included

| File Name      | Description                             |
|----------------|-----------------------------------------|
| mux256to1v.v   | Verilog code for 4-bit 256-to-1 Mux     |

## 🧩 Related HDLBits Exercise
🔗 [HDLBits - mux256to1v](https://hdlbits.01xz.net/wiki/Mux256to1v)
