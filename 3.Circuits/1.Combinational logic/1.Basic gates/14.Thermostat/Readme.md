# Thermostat – Heating and Cooling System Controller

## Overview  
This Verilog module implements a **thermostat control circuit** for a climate system that manages heating, cooling, and fan operations. Based on the mode (heating or cooling) and environmental conditions (too hot or too cold), the circuit activates the appropriate components. Additionally, a manual fan override (`fan_on`) allows the fan to operate independently.

## Module Functionality

### top_module
- **Inputs:**
  - `mode` — Mode selector: `1` for heating, `0` for cooling.
  - `too_cold` — Indicates if the room is too cold.
  - `too_hot` — Indicates if the room is too hot.
  - `fan_on` — Manual fan request (overrides automatic fan control).
- **Outputs:**
  - `heater` — Turns on when in heating mode and it's too cold.
  - `aircon` — Turns on when in cooling mode and it's too hot.
  - `fan` — Turns on if either heater or air conditioner is on, or if user requests fan manually.

## Logic Explanation  
The logic for each component is defined as follows:

- **Heater**:  
  - `heater = mode & too_cold;`  
  - Active only in heating mode when the temperature is low.

- **Air Conditioner**:  
  - `aircon = ~mode & too_hot;`  
  - Active only in cooling mode when the temperature is high.

- **Fan**:  
  - `fan = heater | aircon | fan_on;`  
  - Active when either the heater or AC is running, or when manually requested.

All logic is implemented using only combinational `assign` statements.

## Use Case  
- Models real-world thermostat behavior for HVAC (Heating, Ventilation, and Air Conditioning) systems.
- Demonstrates conditional activation of multiple outputs based on mode and sensor inputs.
- Useful in embedded systems and IoT-based climate control units.

## File Included

| File Name       | Description                                        |
|------------------|----------------------------------------------------|
| `top_module.v`   | Implements thermostat control for heater, AC, and fan |

## Related HDLBits Exercise  
This implementation corresponds to the HDLBits problem:  
[Thermostat](https://hdlbits.01xz.net/wiki/Thermostat)
