# FSM3s

## Overview
This module implements a **4-state Moore finite state machine** (FSM) with one input (`in`), one output (`out`), and a **synchronous reset** (`reset`). The FSM transitions between states based on the input and produces an output based only on the current state. Upon reset, the FSM returns to **state A** synchronously with the clock.

## Module Functionality
- **Inputs**:
  - `clk`: Clock signal
  - `in`: FSM input
  - `reset`: Synchronous reset signal
- **Output**:
  - `out`: Output signal depending on the current state
- **States**:
  - A = 2'b00
  - B = 2'b01
  - C = 2'b10
  - D = 2'b11
- **Behavior**:
  - Synchronous reset to state A on the rising edge of `clk`
  - Transitions and output follow the provided state table

## Logic Explanation
The FSM uses the following transition logic:

| Current State | `in=0` → Next State | `in=1` → Next State | Output |
|---------------|---------------------|---------------------|--------|
| A (00)        | A (00)              | B (01)              | 0      |
| B (01)        | C (10)              | B (01)              | 0      |
| C (10)        | A (00)              | D (11)              | 0      |
| D (11)        | C (10)              | B (01)              | 1      |

- Transitions occur on the rising edge of `clk`.
- Output is based solely on the current state (Moore machine).
- Reset is **synchronous**, so the FSM transitions to state A only on the next rising clock edge if `reset` is high.

## Use Case
This FSM model is useful for digital systems where the state must be controlled precisely in sync with the system clock, such as counters, sequencers, and protocol-driven designs.

## File Included

| File Name | Description                              |
|-----------|------------------------------------------|
| fsm3s.v   | Verilog code for FSM with synchronous reset |

## Related HDLBits Exercise
[HDLBits - fsm3s](https://hdlbits.01xz.net/wiki/Fsm3s)
