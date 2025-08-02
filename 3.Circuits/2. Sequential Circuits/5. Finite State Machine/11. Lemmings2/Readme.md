# Lemmings2

## Overview  
This module implements a **Moore finite state machine (FSM)** that models enhanced behavior of a Lemming from the game *Lemmings*. In addition to changing directions when bumped, the Lemming can now **fall** when there is no ground beneath it and **resume walking** once the ground reappears.

## Module Functionality  

**Inputs:**  
- `clk` : Clock signal  
- `areset` : Asynchronous reset to initial state (walk left)  
- `bump_left` : Indicates an obstacle on the left  
- `bump_right` : Indicates an obstacle on the right  
- `ground` : Indicates presence (`1`) or absence (`0`) of ground beneath the Lemming  

**Outputs:**  
- `walk_left` : `1` if the Lemming is walking left  
- `walk_right` : `1` if the Lemming is walking right  
- `aaah` : `1` if the Lemming is falling  

## Logic Explanation  

### States:
- `LEFT` : Lemming walking left (output: `walk_left = 1`)
- `RIGHT` : Lemming walking right (output: `walk_right = 1`)
- `FALL_L` : Lemming falling (was walking left) (output: `aaah = 1`)
- `FALL_R` : Lemming falling (was walking right) (output: `aaah = 1`)

### State Transition Table:

| Current State | bump_left | bump_right | ground | Next State |
|---------------|-----------|------------|--------|------------|
| LEFT          | X         | X          | 0      | FALL_L     |
| LEFT          | 0         | 1          | 1      | RIGHT      |
| LEFT          | 0         | 0          | 1      | LEFT       |
| RIGHT         | X         | X          | 0      | FALL_R     |
| RIGHT         | 1         | 0          | 1      | LEFT       |
| RIGHT         | 0         | 0          | 1      | RIGHT      |
| FALL_L        | X         | X          | 1      | LEFT       |
| FALL_L        | X         | X          | 0      | FALL_L     |
| FALL_R        | X         | X          | 1      | RIGHT      |
| FALL_R        | X         | X          | 0      | FALL_R     |

- **While falling**, bumps are ignored.
- **When ground disappears**, FSM immediately transitions to a falling state corresponding to the previous direction.
- **When ground reappears**, FSM returns to the respective walking state.
- **During the same cycle** when `ground = 0` and bump occurs, bump is ignored.

### Reset Behavior:
- On asynchronous reset (`areset = 1`), the FSM resets to **LEFT** walking state.

## Use Case  
This FSM models more realistic movement logic for game characters or mobile agents (e.g., simple robots). It can be extended to handle environments with pits, stairs, or ledges—making it useful in embedded AI systems, game development, or robotic path simulation.

## File Included  

| File Name     | Description                                      |
|---------------|--------------------------------------------------|
| top_module.v  | Verilog code modeling Lemming FSM with falling   |

## Related HDLBits Exercise  
[Lemmings2 – HDLBits](https://hdlbits.01xz.net/wiki/Lemmings2)
