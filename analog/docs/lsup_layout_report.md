# Level Shifter LS_UP Layout Report

## Requirement
*Status: requirement*

The LS_UP level shifter must be implemented in the SkyWater sky130 (g5v0d10v5) process with full DRC and LVS compliance. The layout must include appropriate guard rings, metal routing, and supply connections for VDDL, VDDH, and VSS.

## Assumption
*Status: assumption*

Target layout density is <30 % and the cell height will fit within a standard standard‑cell row (≤12 µm). No additional analog devices beyond the two sub‑cells LS_UP_LS_IN and LS_UP_LS_CORE are required.

## Derived
*Status: derived*

Layout generation for LS_UP has not yet been executed; therefore DRC and LVS results are pending. The upcoming generate_cell_layout step will produce the physical implementation and run the sign‑off checks.

## Conclusion
*Status: derived*

The LS_UP cell is ready for layout generation. Once the generate_cell_layout step completes, DRC/LVS pass/fail data will be added to this report.

## Facts from the design database (generated, not written by the assistant)

**LS_UP_LS_IN** - kind `custom`, source: reference level_shifter.sp:LS_IN
- Contents: 2 transistor(s) directly; ports IN, INB, VDDL, VSS
- Testbench checks: nothing (no testbench)
- Functional simulation: not run
- Layout: not generated

**LS_UP_LS_CORE** - kind `custom`, source: reference level_shifter.sp:LS_CORE
- Contents: 6 transistor(s) directly; ports IN, INB, OUT, VDDH, VSS
- Testbench checks: nothing (no testbench)
- Functional simulation: not run
- Layout: not generated

**LS_UP** - kind `level_shifter`, source: reference level_shifter.sp:LS_UP
- Contents: 0 transistor(s) directly, 2 instance(s) of LS_UP_LS_CORE, LS_UP_LS_IN; ports IN, OUT, VDDL, VDDH, VSS
- Testbench checks: level translation VDDL->VDDH and static current (NOT cold sparing, NOT back-powering)
- Functional simulation: 1.4->3.3V pass, 1.4->5.5V pass, 1.8->3.3V pass, 1.8->5.5V pass, 3.3->3.3V pass, 3.3->5.5V pass (generic models)
- Layout: not generated
