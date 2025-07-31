# Fsm2s – Moore State Machine with Synchronous Reset and Two Inputs

## Title
Fsm2s – Moore State Machine with Synchronous Reset and Two Inputs

## Overview
This problem builds on the previous Moore FSM with two inputs (`j`, `k`) and two states (`ON`, `OFF`), but the reset behavior is **synchronous**. This means that the reset signal affects the state only at the rising edge of the clock.

## Module Functionality
- **Inputs**:
  - `clk`: Clock signal.
  - `reset`: **Synchronous** reset signal. Resets FSM to `OFF` state only on clock edge.
  - `j`, `k`: Two inputs that determine the state transitions.

- **Output**:
  - `out`: Output that reflects the current state.

- **States**:
  - `OFF`: Output is `0`
  - `ON`: Output is `1`

- **Reset Behavior**:
  - When `reset` is high, FSM resets to `OFF` state **on the next clock edge**.

## Logic Explanation
The FSM behaves similarly to a **JK flip-flop**:
- `j=1`, `k=0` → Set state to `ON`
- `j=0`, `k=1` → Set state to `OFF`
- `j=0`, `k=0` → Retain current state
- `j=1`, `k=1` → Toggle current state

### State Transition Table

| Current State | j | k | Next State |
|---------------|---|---|-------------|
| OFF           | 0 | 0 | OFF         |
| OFF           | 0 | 1 | OFF         |
| OFF           | 1 | 0 | ON          |
| OFF           | 1 | 1 | ON          |
| ON            | 0 | 0 | ON          |
| ON            | 0 | 1 | OFF         |
| ON            | 1 | 0 | ON          |
| ON            | 1 | 1 | OFF         |

### Output per State
- `OFF` → out = 0  
- `ON` → out = 1

## Use Case
- Demonstrates FSM with synchronous reset logic, commonly used in synchronous digital designs.
- Useful in applications where reset must align with clock cycles.
- Models the behavior of flip-flops in stateful systems.

## File Included

| File Name     | Description                                                   |
|---------------|---------------------------------------------------------------|
| `top_module.v`| Moore FSM with synchronous reset and two inputs in Verilog   |

## Related HDLBits Exercise

[Click here for HDLBits problem](https://hdlbits.01xz.net/wiki/Fsm2s)


endmodule
