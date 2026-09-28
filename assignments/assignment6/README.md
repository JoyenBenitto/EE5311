# EE5311 -- Assignment 6: Transmission-gate D Flip-flop -- Setup Time / tCQ / tDQ

sky130, 1.8 V process. Transmission-gate master-slave positive-edge-triggered
D flip-flop (built from the `inv` and `transmission_gate` primitives),
characterized in Ngspice by sweeping the arrival time of $D$ relative to the
clock edge to find the minimum setup time and the corresponding
clock-to-Q ($t_{CQ}$) and data-to-Q ($t_{DQ}$) delays, for both a rising
(Problem 1a) and a falling (Problem 1b) $D$/$Q$ transition.

## Build

```
make          # builds index.pdf
make release  # builds index.pdf, then packages sources + PDF into NS26Z186.zip
make clean    # removes index.pdf and NS26Z186.zip
```

## Layout

- `inv.sch` / `.sym` -- xschem schematic/symbol for the static CMOS inverter
  ($W_p/L_p = 0.84/0.15\ \mu\text{m}$, $W_n/L_n = 0.42/0.15\ \mu\text{m}$)
- `transmission_gate.sch` / `.sym` -- CMOS transmission gate, same device
  sizes, gated by complementary `phi` / `phi_bar`
- `assign1.sch` / `assign1.spice` -- Problem 1(a): flip-flop testbench and
  ngspice netlist sweeping a rising $D$ transition across the clock edge
- `assign1b.sch` / `assign1b.spice` -- Problem 1(b): same testbench, sweeping
  a falling $D$ transition
- `figures/` -- schematic screenshots and sweep/waveform plots used in the
  report
- `index.tex` / `index.pdf` -- the report source and build output

## Simulation

Both `.spice` netlists sweep the delay of the $D$ pulse source in fixed
steps across the (fixed) clock edge and, for every sweep point, measure
$t_{setup}$ (time from $D$ transition to the clock edge), $t_{CQ}$
(clock-to-$Q$) and $t_{DQ}$ (data-to-$Q$) with `.meas tran`, reporting the
sweep point with minimum valid $t_{DQ}$. Simulated in Ngspice (KLU direct
solver) against `sky130.lib.spice` (tt corner) inside the course's
`srampr/ee5311_iitm` container/PDK environment.

Results:

| | $t_{setup}$ (min $t_{DQ}$) | $t_{CQ}$ | $t_{DQ,min}$ |
|---|---|---|---|
| 1(a), $D$/$Q$ rising  | 130 ps | 80.323 ps | 210.323 ps |
| 1(b), $D$/$Q$ falling | 140 ps | 100.732 ps | 240.732 ps |

## Status

Complete: both setup-time sweeps and the summary table (numbers above are the
latest runs). Report follows the schematic / measurement / calculation format.
Pending: re-capture the sweep and D/phi/Q waveform figures (Figures 4, 5, 7, 8)
from the latest runs -- the current images are from the earlier 150 ps runs.
