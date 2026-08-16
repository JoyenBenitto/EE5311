# EE5311 -- Assignment 1: MOSFET I-V Characteristics

sky130, 1.8 V process. nMOS/pMOS transfer and output characteristics, velocity
saturation, and capacitor charging/discharging, using the long-channel plus
velocity-saturation drain-current model (Rabaey, 2nd ed.) alongside Ngspice
simulation.

## Build

```
make          # builds index.pdf
make release  # builds index.pdf, then packages sources + PDF into NS26Z186.zip
make clean    # removes index.pdf and NS26Z186.zip
```

## Layout

- `*.sch` / `*.spice` -- xschem schematics and their generated netlists
- `*.cir` -- ngspice control scripts, `.include`d by the matching `.spice` files
- `figures/` -- schematic screenshots and plots used in the report
- `index.tex` / `index.pdf` -- the report source and build output
