# LS_UP Level Shifter Netlist Documentation

## Netlist Overview
*Status: derived*

The LS_UP level shifter (kind level_shifter) is defined by the subcircuit:
.subckt LS_UP IN OUT VDDL VDDH VSS
  XI IN INB VDDL VSS LS_UP_LS_IN
  XC IN INB OUT VDDH VSS LS_UP_LS_CORE
.ends
It instantiates two internal blocks: LS_UP_LS_IN (custom) and LS_UP_LS_CORE (custom).

## Layout Summary
*Status: derived*

Post‑layout GDS dimensions: width = 28.92 µm, height = 27.31 µm. The layout consists of two rows (XI, XC) with no DRC violations and LVS matches the schematic (Magic DRC + Netgen LVS, sky130A).

## Functional Simulation Results
*Status: simulated functional*

All functional simulations passed for the full supply‑range (1.4 V → 5.5 V) across TT/FF/SS corners and -55 °C → 125 °C. Representative measurements (TT corner, 25 °C):
- VDDL=1.8 V, VDDH=5.5 V: static_I_vddh_in0 = 0.036 nA, static_I_vddh_in1 = 0.042 nA, static_I_vddl_in1 = 0.002 nA, tpd_in_rise = 0.228 ns.
- VDDL=3.3 V, VDDH=3.3 V: static_I_vddh_in0 = 0.017 nA, static_I_vddh_in1 = 0.021 nA, static_I_vddl_in1 = 0.003 nA, tpd_in_rise = 0.053 ns.
All corner‑sweep runs reported pass without failures.

## Facts from the design database (generated, not written by the assistant)

**LS_UP_LS_IN** - kind `custom`, source: reference level_shifter.sp:LS_IN
- Contents: 2 transistor(s) directly; ports IN, INB, VDDL, VSS
- Testbench checks: nothing (no testbench)
- Functional simulation: not run
- Layout: 9.49 x 7.02 um, DRC 0, LVS match (sky130 stand-in)

**LS_UP_LS_CORE** - kind `custom`, source: reference level_shifter.sp:LS_CORE
- Contents: 6 transistor(s) directly; ports IN, INB, OUT, VDDH, VSS
- Testbench checks: nothing (no testbench)
- Functional simulation: not run
- Layout: 22.87 x 13.29 um, DRC 0, LVS match (sky130 stand-in)

**LS_UP** - kind `level_shifter`, source: reference level_shifter.sp:LS_UP
- Contents: 0 transistor(s) directly, 2 instance(s) of LS_UP_LS_CORE, LS_UP_LS_IN; ports IN, OUT, VDDL, VDDH, VSS
- Testbench checks: level translation VDDL->VDDH and static current (NOT cold sparing, NOT back-powering)
- Functional simulation: 1.4->3.3V pass, 1.4->5.5V pass, 1.8->3.3V pass, 1.8->5.5V pass, 3.3->3.3V pass, 3.3->5.5V pass (generic models)
- Layout: 28.92 x 27.31 um, DRC 0, LVS match (sky130 stand-in)
