# Ringer – Call Alert Mode Controller (Ringer or Motor)

## Overview  
This Verilog module implements a **combinational control circuit** for a cellphone’s notification system. Based on incoming call status (`ring`) and the user’s preference (`vibrate_mode`), it activates either the **ringer** or **vibration motor**, but never both. The design uses only `assign` statements and is based on conditional logic translation from an imperative description.

## Module Functionality

### top_module
- **Inputs:**
  - `ring` — Indicates whether there is an incoming call.
  - `vibrate_mode` — Selects between vibrate (1) and ring (0) modes.
- **Outputs:**
  - `ringer` — Activated when `ring = 1` and `vibrate_mode = 0`.
  - `motor` — Activated when `ring = 1` and `vibrate_mode = 1`.

## Logic Explanation  
The functionality is derived from the rule:

- If `ring = 1`:
  - If `vibrate_mode = 1` → turn on `motor`.
  - Else → turn on `ringer`.

This is expressed in Verilog as:

- `motor  = ring & vibrate_mode;`
- `ringer = ring & ~vibrate_mode;`

Only one output is active at a time based on the vibrate mode setting. If `ring = 0`, both outputs remain off.

## Use Case  
- Controls user notification behavior in mobile devices.
- Demonstrates translating a **software-style conditional description** into **hardware logic using `assign`**.
- Reinforces conditional combinational logic design and safe mutual exclusivity in output behavior.

## File Included

| File Name       | Description                                         |
|------------------|-----------------------------------------------------|
| `top_module.v`   | Implements mutual-exclusive ringer/motor controller |

## Related HDLBits Exercise  
This implementation corresponds to the HDLBits problem:  
[Ringer](https://hdlbits.01xz.net/wiki/Ringer)
