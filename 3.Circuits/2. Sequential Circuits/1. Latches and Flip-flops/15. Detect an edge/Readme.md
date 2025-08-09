# 8-Bit Positive Edge Detector

## 🧾 Overview
This module performs positive edge detection for each bit in an 8-bit input vector. It outputs a corresponding 8-bit vector where each bit is set high for one clock cycle when a 0-to-1 transition is detected in the respective input bit.

## 🧠 Module Functionality
- Monitors each bit of the 8-bit input signal `in[7:0]`.
- Detects a **rising edge** (transition from 0 to 1) for each bit.
- Outputs `pedge[7:0]` where each bit is set to 1 for one clock cycle after a positive edge is detected in the corresponding input bit.
- Uses a register to store the previous state of the input for comparison on each clock cycle.

## 🎯 Use Case
Common in digital systems where event detection is needed, such as:
- Button press detection (debounced input)
- Synchronizing asynchronous inputs
- Triggering state transitions
- Counting specific events

## 📁 File Included

| File Name       | Description                                           |
|-----------------|-------------------------------------------------------|
| `top_module.v`  | Implements 8-bit positive edge detection logic        |

## 📘 Related HDLBits Exercise
**HDLBits Link**: [Edge Detection – HDLBits](https://hdlbits.01xz.net/wiki/Edgedetect)
