# FSM3comb

## Overview
This exercise requires implementing the **combinational logic portion** of a Moore finite state machine (FSM) with four states (A, B, C, D). Based on the current state and input, the FSM computes the next state and the output.

## Module Functionality
You will write the logic for two outputs:
- `next_state`: The next state of the FSM depending on the input `in` and the current state `state`.
- `out`: The output of the FSM, based only on the current state (Moore machine).

## Logic Explanation
### State Encoding
The states are encoded as follows:
- A = `2'b00`
- B = `2'b01`
- C = `2'b10`
- D = `2'b11`

### Transition Table

| Current State | `in=0` → Next State | `in=1` → Next State | Output |
|---------------|---------------------|---------------------|--------|
| A (`00`)      | A (`00`)            | B (`01`)            | 0      |
| B (`01`)      | C (`10`)            | B (`01`)            | 0      |
| C (`10`)      | A (`00`)            | D (`11`)            | 0      |
| D (`11`)      | C (`10`)            | B (`01`)            | 1      |

The output depends only on the current state (Moore FSM).

## Use Case
FSMs like this are useful in:
- Digital controllers
- Sequence detectors
- Communication protocols

## File Included

| File Name    | Description                          |
|--------------|--------------------------------------|
| `fsm3comb.v` | FSM state transition and output logic|

## HDLBits Exercise
[hdlbits.01xz.net/wiki/Fsm3comb](https://hdlbits.01xz.net/wiki/Fsm3comb)
