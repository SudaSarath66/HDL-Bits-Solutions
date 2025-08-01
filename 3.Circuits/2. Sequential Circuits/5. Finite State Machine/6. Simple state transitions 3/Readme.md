# FSM3 One-Hot

## Overview
This module implements the combinational logic for a **Moore FSM** with **four states** using **one-hot encoding**. It takes as inputs the current state (`state`) and an input signal (`in`), and produces the next state (`next_state`) and output (`out`). The FSM transitions between states A, B, C, and D based on the value of `in`, with only one bit in the state vector high at a time (one-hot representation).

## Module Functionality
- **Input:** `in` (1-bit), `state` (4-bit one-hot)
- **Output:** `next_state` (4-bit one-hot), `out` (1-bit)
- The transitions are based on the current state and input `in`, as per the transition table provided.
- Output is `1` **only** when the machine is in state D.

## Logic Explanation
### State Encoding:
- A = 4’b0001 (state[0])
- B = 4’b0010 (state[1])
- C = 4’b0100 (state[2])
- D = 4’b1000 (state[3])

### State Transition Table:
| Current State | in=0 → Next | in=1 → Next | Output |
|---------------|-------------|-------------|--------|
| A             | A           | B           | 0      |
| B             | C           | B           | 0      |
| C             | A           | D           | 0      |
| D             | C           | B           | 1      |

### Transition Equations (by inspection):
- `next_state[0] = state[0] & ~in | state[2] & ~in` → for state A
- `next_state[1] = state[0] & in | state[1] & in | state[3] & in` → for state B
- `next_state[2] = state[1] & ~in | state[3] & ~in` → for state C
- `next_state[3] = state[2] & in` → for state D

### Output Logic:
- `out = state[3]` → Only high when in state D

## Use Case
This FSM could represent a simple control system with 4 unique states triggered by a single binary input. A real-world application could be a state-controlled traffic light or a sequence detection logic where each stage represents a step in a controlled operation.

## File Included

| Filename     | Description                                |
|--------------|--------------------------------------------|
| top_module.v | FSM combinational logic using one-hot code |

## Related HDLBits Exercise
- [fsm3onehot](https://hdlbits.01xz.net/wiki/Fsm3onehot)
