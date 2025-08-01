# FSM3

## Overview
This module implements a **4-state Moore finite state machine** (FSM) with one input (`in`), one output (`out`), and an **asynchronous reset** (`areset`). The FSM transitions between states based on the input and produces an output associated with the current state only. The FSM resets to **state A** on `areset`.

## Module Functionality
- **Input**:
  - `clk`: Clock signal
  - `in`: FSM input
  - `areset`: Asynchronous reset signal
- **Output**:
  - `out`: Output signal based on the current state
- **States**:
  - A = 2'b00
  - B = 2'b01
  - C = 2'b10
  - D = 2'b11
- **Behavior**:
  - Asynchronous reset to state A
  - Transitions and outputs based on the given table

## Logic Explanation
The FSM transitions based on the following table:

| Current State | `in=0` → Next State | `in=1` → Next State | Output |
|---------------|---------------------|---------------------|--------|
| A (00)        | A (00)              | B (01)              | 0      |
| B (01)        | C (10)              | B (01)              | 0      |
| C (10)        | A (00)              | D (11)              | 0      |
| D (11)        | C (10)              | B (01)              | 1      |

- On every clock edge, the FSM transitions to the next state depending on the current state and input.
- Output `out` is a function of the current state (Moore output logic).

## Use Case
Useful for systems with predictable transitions such as protocol handlers, elevator controllers, or any sequence controller requiring reset and defined outputs for each state.

## File Included

| File Name | Description                        |
|-----------|------------------------------------|
| fsm3.v    | Verilog code for FSM with async reset and output |

## Related HDLBits Exercise
[HDLBits - fsm3](https://hdlbits.01xz.net/wiki/Fsm3)
