# EE5311 -- Assignment 7: Ripple-carry adder -- schematic and layout extracted delay

sky130, 1.8 V. Mirror carry and sum cells; delays $C_{-1}\to C_0$ and
$C_{-1}\to S_0$ measured pre-layout and layout-extracted, compared with logical effort.

## Build

```
make          # builds index.pdf
make release  # builds index.pdf, then packages sources + PDF into NS26Z186.zip
make clean    # removes index.pdf and NS26Z186.zip
```

## Layout

- `carry.sch/.sym/.spice`, `sum.sch/.sym/.spice` -- schematic cells
- `carry.gds`, `sum.gds` -- layouts; `*.ext`, `*.res.ext`, `*.nodes`, `*.sim`, `*_extracted.spice` -- extraction
- `*_magic_lvs.lvsdb`, `comp.out`, `*_magic_drc.lyrdb`, `magic_drc.out` -- LVS / DRC
- `assign1a.sch/.spice` -- two-stage ripple testbench (currently includes the extracted netlists)
- `figures/` -- screenshots used in the report; `index.tex` / `index.pdf` -- report

## Results

| | Schematic | Extracted | Logical effort |
|---|---|---|---|
| $C_{-1}\to C_0$ | 60.72 ps | 80.43 ps | 73.7 ps |
| $C_{-1}\to S_0$ | 164.11 ps | 230.28 ps | 110.6 ps |

$\tau = 9.22$ ps (Assignment 3 inverter, $t_p = 18.44$ ps $= 2\tau$); carry $g=2,\ h=2,\ p=4$.

## Status

Complete: simulations, logical-effort estimate, layouts/LVS, figures and `index.tex`.
