# EE5311 -- Assignment 4: Inverter and Ring Oscillator -- Post-layout Extracted Simulation

sky130, 1.8 V process. DRC- and LVS-clean layout of the CMOS reference
inverter and of the 7-stage ring oscillator from Assignment 3, with
parasitic-extracted (RC) post-layout delay and oscillation-frequency
simulation in Ngspice, compared against the pre-layout results.

## Build

```
make          # builds index.pdf
make release  # builds index.pdf, then packages sources + PDF into NS26Z186.zip
make clean    # removes index.pdf and NS26Z186.zip
```

## Layout

- `inv.sch` / `.sym` -- xschem schematic/symbol for the CMOS reference
  inverter ($W_p/L_p = 0.84/0.15\ \mu\text{m}$, $W_n/L_n = 0.42/0.15\ \mu\text{m}$)
- `inv.gds` -- DRC/LVS-clean magic layout of the inverter
- `inv.ext` / `inv.res.ext` / `inv.nodes` -- magic parasitic extraction output
- `inv_magic_lvs.lvsdb` -- magic LVS database for the inverter
- `inv_tb.sch` / `.sym` -- two-inverter delay testbench (Problem 1)
- `inv_tb.gds`, `inv_tb.ext` / `.res.ext` / `.nodes`, `inv_tb_magic_lvs.lvsdb` --
  layout and extraction for the testbench
- `inv_tb_extracted.spice` / `inv_extracted.cir` -- ngspice netlists generated
  from the extracted parasitics, used for post-layout delay simulation
- `ro7.sch` / `.sym`, `ro7_tb.sch` -- xschem schematic/symbol for the 7-stage
  ring oscillator and its testbench (built from the inverter layout)
- `ro7.gds` -- DRC/LVS-clean layout of the ring oscillator
- `ro7.ext` / `.res.ext` / `.nodes`, `ro7_magic_lvs.lvsdb` -- ring oscillator
  parasitic extraction and LVS database
- `ro7_extracted.spice` / `ro7_lvs.spice` / `ro7_tb.spice` / `ro.spice` --
  extracted/LVS/testbench netlists for ring oscillator simulation
- `magic_drc.out` -- magic DRC report (empty = clean)
- `comp.out` -- magic LVS comparison report (netlists match uniquely)
- `figures/` -- schematic, layout, and waveform screenshots used in the report
- `index.tex` / `index.pdf` -- the report source and build output

## Status

Problem 2(a) (oscillation frequency at $V_{DD}=1.8$~V with layout parasitics)
is complete. Problem 1 (inverter delay) and Problem 2(b)/(c) (frequency vs.\
$V_{DD}$ sweep and comparison against Assignment 3) are marked `TODO` in
`index.tex` pending those simulation runs.
