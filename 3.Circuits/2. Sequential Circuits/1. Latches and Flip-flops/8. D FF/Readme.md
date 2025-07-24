# 🔁 D Flip-Flop with Asynchronous Reset

## 🧾 Overview
This module implements a **positive-edge triggered D flip-flop** with an **active-high asynchronous reset** (`ar`).  
The asynchronous reset overrides the normal behavior and sets the output `q` to 0 immediately, regardless of the clock.

## 🧠 Module Functionality
- `q` is updated on the **rising edge of the clock** (`clk`)
- If `ar == 1`, `q` is immediately reset to `0` (asynchronous behavior)
- Otherwise, `q` takes the value of input `d` on the rising edge of `clk`

## 🔍 Logic Explanation
- The sensitivity list includes both `posedge clk` and `posedge ar` to handle asynchronous reset
- Asynchronous reset must take precedence, so it is checked first in the conditional block
- This is a standard way to implement a resettable flip-flop that can be controlled outside the clock domain

## 🎯 Use Case
- Common in synchronous digital systems where immediate reset of flip-flops is needed (e.g., reset-on-power-up)
- Widely used in control logic, FSMs, and datapath registers

## 📁 File Included

| File Name     | Description                                    |
|---------------|------------------------------------------------|
| `top_module.v`| D flip-flop with active-high asynchronous reset|

## 📘 Related HDLBits Exercise
**HDLBits Link**: [Exams/m2014_q4c – HDLBits](https://hdlbits.01xz.net/wiki/Exams/m2014_q4c)

