# Lemmings1

## Overview  
This module implements a **Moore finite state machine (FSM)** to simulate the behavior of a Lemming from the game *Lemmings*. The FSM models how a Lemming changes walking direction when it encounters obstacles on either side.

## Module Functionality  

**Inputs:**  
- `clk` : Clock signal  
- `areset` : Asynchronous reset to initial state (walk left)  
- `bump_left` : Indicates an obstacle on the left  
- `bump_right` : Indicates an obstacle on the right  

**Output:**  
- `walk_left` : `1` if the Lemming is walking left, `0` if walking right  

## Logic Explanation  

### States:
- `LEFT` : Lemming walking left (output `walk_left = 1`)
- `RIGHT` : Lemming walking right (output `walk_left = 0`)

### State Transition Table:

| Current State | bump_left | bump_right | Next State |
|---------------|-----------|------------|------------|
| LEFT          | 0         | 0          | LEFT       |
| LEFT          | X         | 1          | RIGHT      |
| RIGHT         | 0         | 0          | RIGHT      |
| RIGHT         | 1         | X          | LEFT       |

- If the Lemming is walking **LEFT** and it hits a wall on the **right**, it switches to walking **RIGHT**
- If walking **RIGHT** and it hits a wall on the **left**, it switches to **LEFT**
- If both bumps are active, it always switches direction

### Reset Behavior:
- On asynchronous reset (`areset = 1`), the FSM resets to **LEFT** state (Lemming starts walking left)

## Use Case  
This FSM is a practical example of a Moore machine with simple direction logic. It can be extended to robotics (obstacle-based direction change), basic AI systems, or simplified traffic/navigation simulations.

## File Included  

| File Name     | Description                                     |
|---------------|-------------------------------------------------|
| top_module.v  | Verilog code modeling Lemming FSM behavior      |

## Related HDLBits Exercise  
[Lemmings1 – HDLBits](https://hdlbits.01xz.net/wiki/Lemmings1)
