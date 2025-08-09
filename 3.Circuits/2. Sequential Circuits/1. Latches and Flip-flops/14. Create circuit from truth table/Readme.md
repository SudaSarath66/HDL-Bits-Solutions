# JK Flip-Flop Using D Flip-Flop and Logic Gates

## 🧾 Overview
This module implements a JK flip-flop using only a D-type flip-flop and basic logic gates. The design replicates the functionality of a standard JK flip-flop by deriving the required D input logic from the JK truth table. On every rising clock edge, the D flip-flop captures this computed value to produce the correct JK flip-flop behavior.

## 🧠 Module Functionality
- The module has inputs **J**, **K**, and **clk**.
- Output **Q** represents the current state of the flip-flop.
- The D input is calculated from J, K, and the current Q (Qold).
- On the **positive edge** of the clock, Q is updated with the computed D value.

- This logic ensures:
- **J=0, K=0** → No change
- **J=0, K=1** → Reset (Q=0)
- **J=1, K=0** → Set (Q=1)
- **J=1, K=1** → Toggle (Q becomes NOT Q)
- A single D flip-flop is used with combinational logic to generate the D input.

## 🎯 Use Case
Common in digital systems where JK flip-flop behavior is required but only D flip-flops are available, such as:
- Counters
- Toggle circuits
- State machine design
- Educational demonstrations of flip-flop conversions

## 📁 File Included

| File Name       | Description                                        |
|-----------------|----------------------------------------------------|
| `top_module.v`  | Implements JK flip-flop using D flip-flop and gates |

## 📘 Related HDLBits Exercise
**HDLBits Link**: [JK from D – HDLBits](https://hdlbits.01xz.net/wiki/Exams/ece241_2013_q7)
