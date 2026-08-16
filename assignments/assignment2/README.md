# EE5311 -- Assignment 2: Inverter DC Characteristics

sky130, 1.8 V process. Static CMOS and pseudo-nMOS inverter DC design and
analysis, using the same velocity-saturation device model as Assignment 1
alongside Ngspice simulation.

## Build

```
make          # builds index.pdf
make release  # builds index.pdf, then packages sources + PDF into NS26Z186.zip
make clean    # removes index.pdf and NS26Z186.zip
```

## Layout

- `assignNXa.sch` / `.spice` -- xschem schematics and their generated netlists
- `sim*.cir` -- standalone ngspice control scripts
- `figures/` -- schematic screenshots and plots used in the report
- `index.tex` / `index.pdf` -- the report source and build output
