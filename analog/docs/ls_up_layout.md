# LS_UP Layout Report

## Derived Layout Metrics
*Status: derived*

The post‑layout cell LS_UP occupies a footprint of 28.92 µm (width) × 27.31 µm (height). It consists of two rows: the LS_UP_LS_IN block (9.49 µm × 7.02 µm) and the LS_UP_LS_CORE block (22.87 µm × 13.29 µm).

## Layout Verification
*Status: derived*

Magic DRC reported zero violations and Netgen LVS confirmed a perfect match to the schematic (LS_UP_LS_IN and LS_UP_LS_CORE sub‑cells placed as shown).

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
