# Arrow Key Decoder using `always` block (`always_nolatches`)

## Overview
This module decodes **PS/2 keyboard scancodes** to detect when an **arrow key** is pressed. Based on a specific 16-bit scancode, it asserts one of the four outputs (`up`, `down`, `left`, `right`) accordingly.

## Module Functionality

### top_module
- **Input:**
  - `scancode[15:0]` — 16-bit scancode from the keyboard
- **Outputs:**
  - `left`, `down`, `right`, `up` — Asserted (set to `1`) based on the decoded arrow key

## Logic Explanation

- Each arrow key has a unique **extended scancode** (2-byte):
  - `0xE06B`: Left arrow
  - `0xE072`: Down arrow
  - `0xE074`: Right arrow
  - `0xE075`: Up arrow
- The `always @(*)` block checks these codes using a `case` statement.
- All outputs are reset to `0` by default before the `case` begins. This ensures no **latch** is inferred.
- The `default` case is technically unnecessary due to the default assignment, but is included for clarity.

## Use Case

This logic is used in:
- Keyboard-controlled games
- Embedded systems that interpret keyboard input
- Any application that requires decoding specific scancodes

## File Included

| File Name       | Description                                       |
|------------------|---------------------------------------------------|
| `top_module.v`   | Verilog code to detect PS/2 arrow key scancodes   |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Always_nolatches](https://hdlbits.01xz.net/wiki/Always_nolatches)
