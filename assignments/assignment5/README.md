# EE5311 -- Assignment 5: NAND Gate -- Schematic and Layout Extracted Simulation

sky130, 1.8 V process. Two-input NAND gate (nMOS/pMOS $1.68/0.15\ \mu\text{m}$,
$n_f=4$) driving an identically-sized NAND gate, with schematic-level delay
compared against the layout-extracted (parasitic RC) delay in Ngspice.

## Build

```
make          # builds index.pdf
make release  # builds index.pdf, then packages sources + PDF into NS26Z186.zip
make clean    # removes index.pdf and NS26Z186.zip
```

## Layout

- `nand.sch` / `.sym` -- xschem schematic/symbol for the two-input NAND gate
  ($W_p/L_p = W_n/L_n = 1.68/0.15\ \mu\text{m}$, $n_f=4$)
- `assign1a.sch` -- Problem 1(a): schematic-level two-NAND-gate delay testbench
  (driving NAND with input pulse on $A$, $B$ tied to $V_{DD}$; loading NAND of
  the same size)
- `nand_tb.sch` / `.sym` -- layout testbench schematic (two NAND gate instances)
- `nand_tb.gds` -- DRC/LVS-clean magic layout of the two-NAND-gate testbench
- `nand_tb.ext` / `.res.ext` / `.nodes` -- magic parasitic extraction output
- `nand_tb_magic_lvs.lvsdb` / `comp.out` -- magic LVS database/report (netlists
  match uniquely)
- `nand_tb_magic_drc.lyrdb` / `magic_drc.out` -- magic DRC database/report
  (empty report = clean)
- `nand_tb_extracted.spice` / `nand_tb_lvs.spice` -- ngspice netlists generated
  from the extracted parasitics, used for post-layout delay simulation
- `assign2b.sch` / `.spice` -- Problem 1(b): layout-extracted delay testbench,
  instantiating `nand_tb_extracted.spice`
- `figures/` -- schematic, layout, and waveform screenshots used in the report
- `index.tex` / `index.pdf` -- the report source and build output

## Status

Schematics, layout, extraction, and DRC/LVS (both clean) are complete.
Problem 1(a) schematic-level delay ($t_p \approx 25.7$~ps) and Problem 1(b)
layout-extracted delay ($t_p \approx 36.4$~ps) are both measured; only the
logical effort comparison for Problem 1(a) is marked `TODO` in `index.tex`.
