# Fsm1 – Moore State Machine with Asynchronous Reset

## Title
Fsm1 – Moore State Machine with Asynchronous Reset

## Overview
This problem involves implementing a simple Moore finite state machine (FSM) with two states, one input, and one output. The FSM has an **asynchronous reset**, and it outputs a value based solely on its current state (Moore behavior).

## Module Functionality
- **Inputs**:
  - `clk`: Clock signal (positive edge-triggered).
  - `areset`: Asynchronous reset signal. Active high. Sets the FSM to state **B** regardless of clock.
  - `in`: Input to control state transitions.

- **Output**:
  - `out`: Based on the current state.

- **States**:
  - `A`: Output is `1`.
  - `B`: Output is `0`.

- **Reset**:
  - On asserting `areset`, the FSM immediately jumps to state `B`.

## Logic Explanation
### Transition Table:
| Current State | `in` = 0 | `in` = 1 |
|---------------|----------|----------|
| A             | A        | B        |
| B             | A        | B        |

### Output per state (Moore):
- A → out = 1  
- B → out = 0

### Implementation Notes:
- Declare state encoding using an enumerated `typedef` or localparams.
- Use `always_ff` block with async reset handling.
- Assign output using a `case` statement based on current state.

## Use Case
- Fundamental FSM design for digital systems.
- Helps understand Moore FSMs with async reset.
- Forms basis for larger protocol or control designs.

## File Included

| File Name     | Description                               |
|---------------|-------------------------------------------|
| `top_module.v`| Verilog code for Moore FSM with async reset |

## Related HDLBits Exercise

[Click here for HDLBits problem](https://hdlbits.01xz.net/wiki/Fsm1)

