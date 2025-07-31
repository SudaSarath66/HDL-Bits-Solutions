# Fsm1s – Moore State Machine with Synchronous Reset

## Title
Fsm1s – Moore State Machine with Synchronous Reset

## Overview
This problem is a variation of the **FSM1** problem. It involves implementing a Moore finite state machine (FSM) with two states, one input, and one output, but this time using a **synchronous reset**. The FSM outputs a signal based solely on the current state.

## Module Functionality
- **Inputs**:
  - `clk`: Clock signal (positive edge-triggered).
  - `reset`: Synchronous reset signal. Active high. Resets the FSM to state **B** on clock edge.
  - `in`: Controls transitions between states.

- **Output**:
  - `out`: Depends on current state (Moore FSM).

- **States**:
  - `A`: Output is `1`.
  - `B`: Output is `0`.

- **Reset Behavior**:
  - When `reset` is high on the rising clock edge, FSM moves to state **B**.

## Logic Explanation
### Transition Table:
| Current State | `in` = 0 | `in` = 1 |
|---------------|----------|----------|
| A             | A        | B        |
| B             | A        | B        |

### Output per state:
- A → out = 1  
- B → out = 0

### Implementation Notes:
- Use Verilog-1995 style module declaration.
- Define the FSM states using parameters or `typedef`.
- Use `always @(posedge clk)` block with `if (reset)` to handle synchronous reset.
- Use a `case` statement to define state transitions.

## Use Case
- Foundation for sequential logic design using synchronous control.
- Suitable for digital controllers and protocol FSMs.
- Helps differentiate between synchronous and asynchronous resets.

## File Included

| File Name     | Description                                      |
|---------------|--------------------------------------------------|
| `top_module.v`| Moore FSM with synchronous reset in Verilog-1995 |

## Related HDLBits Exercise

[Click here for HDLBits problem](https://hdlbits.01xz.net/wiki/Fsm1s)


endmodule
