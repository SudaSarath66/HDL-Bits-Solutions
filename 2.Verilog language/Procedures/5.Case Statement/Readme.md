# 6-to-1 Multiplexer using Case Statement (`always_case`)

## Overview
This Verilog module implements a **6-to-1 multiplexer** using a `case` statement inside a combinational `always` block. It selects one of six 4-bit data inputs based on a 3-bit selection input `sel`. If the selection is outside the valid range (i.e., > 5), the output defaults to `0`.

## Module Functionality

### top_module
- **Inputs:**
  - `sel[2:0]` — Selects which of the six data inputs to output
  - `data0` to `data5` — Six 4-bit wide input data signals
- **Output:**
  - `out[3:0]` — Selected 4-bit output based on `sel`

## Logic Explanation

| `sel` Value | `out` Assigned from |
|-------------|----------------------|
| `000`       | `data0`              |
| `001`       | `data1`              |
| `010`       | `data2`              |
| `011`       | `data3`              |
| `100`       | `data4`              |
| `101`       | `data5`              |
| Others      | `4'b0000` (default)  |

- A `case` statement simplifies selection logic for multiple conditions.
- Default case ensures **no latch inference** by covering all input cases.

## Use Case
Multiplexers are widely used in digital systems for data routing and signal selection. This example provides a clean and scalable way to implement them using `case`.

## File Included

| File Name       | Description                          |
|------------------|--------------------------------------|
| `top_module.v`   | Verilog code for 6-to-1 multiplexer  |

## Related HDLBits Exercise
This module corresponds to the HDLBits problem:  
[Always_case](https://hdlbits.01xz.net/wiki/Always_case)
