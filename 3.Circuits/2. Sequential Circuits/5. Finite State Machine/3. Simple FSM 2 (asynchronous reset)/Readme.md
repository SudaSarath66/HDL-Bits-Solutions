# Fsm2 – Moore State Machine with Asynchronous Reset and Two Inputs

## Title
Fsm2 – Moore State Machine with Asynchronous Reset and Two Inputs

## Overview
This problem extends the earlier FSM designs by introducing **two inputs (j, k)** and implementing a Moore state machine with an **asynchronous reset**. The FSM has two states and its output depends only on the current state, not directly on the input values.

## Module Functionality
- **Inputs**:
  - `clk`: Clock signal.
  - `areset`: Asynchronous reset signal. Immediately sets the state to `OFF` when high.
  - `j`, `k`: Inputs that determine the state transitions (like JK flip-flop behavior).

- **Output**:
  - `out`: Output signal which depends only on the current state.

- **States**:
  - `ON`: Output is `1`.
  - `OFF`: Output is `0`.

- **Reset Behavior**:
  - When `areset` is high (independent of `clk`), FSM resets to `OFF`.

## Logic Explanation
This FSM resembles the logic of a JK flip-flop:
- **Transition Logic**:
  - `j = 1`, `k = 0` → Set state to `ON`
  - `j = 0`, `k = 1` → Set state to `OFF`
  - `j = 0`, `k = 0` → Stay in current state
  - `j = 1`, `k = 1` → Toggle state

### Transition Table:
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

### Output per State:
- `OFF` → out = 0  
- `ON` → out = 1

## Use Case
- FSM with control based on two input signals.
- Useful in state-based control systems and flip-flop modeling.
- Demonstrates asynchronous reset handling in FSM design.

## File Included

| File Name     | Description                                                  |
|---------------|--------------------------------------------------------------|
| `top_module.v`| Moore FSM with two inputs and asynchronous reset in Verilog |

## Related HDLBits Exercise

[Click here for HDLBits problem](https://hdlbits.01xz.net/wiki/Fsm2)


endmodule
