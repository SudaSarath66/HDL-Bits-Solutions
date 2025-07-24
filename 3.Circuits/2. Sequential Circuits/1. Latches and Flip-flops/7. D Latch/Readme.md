# 🔒 Level-Sensitive D Latch with Enable

## 🧾 Overview
This module implements a **level-sensitive D latch** with an **enable** signal.  
The design **does not use a clock** and instead is **controlled by the enable line (`ena`)**.

## 🧠 Module Functionality
- When `ena = 1`, the output `q` follows the input `d`
- When `ena = 0`, the output `q` **retains its previous value**
- This is a **transparent latch**, not a flip-flop

## 🔍 Logic Explanation
- The sensitivity list includes both `ena` and `d` to allow level-based behavior
- A conditional assignment using `if (ena)` stores the input `d` into output `q`
- Since `q` may not be updated in every condition, this results in **latch inference**, which is **intentional**
- Synthesis tools like Quartus will issue a warning for latch inference – this is **expected**

## 🎯 Use Case
- Common in low-power designs or datapath gating where storage is needed only when enable is active
- May be used inside memory elements, asynchronous logic, or custom control units

## 📁 File Included

| File Name     | Description                            |
|---------------|----------------------------------------|
| `top_module.v`| Level-sensitive D latch with enable    |

## 📘 Related HDLBits Exercise
**HDLBits Link**: [Exams/m2014_q4b – HDLBits](https://hdlbits.01xz.net/wiki/Exams/m2014_q4b)

