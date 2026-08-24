# EE5311 -- Assignment 3: CMOS Inverter Transient Characteristics and Ring Oscillator

sky130, 1.8 V process. Static CMOS inverter propagation delay and energy-delay
product vs.\ supply voltage, and 7-/9-stage ring oscillator frequency vs.\
supply voltage, using the same long-channel/velocity-saturation device model
as Assignments 1 and 2 alongside Ngspice simulation.

## Build

```
make          # builds index.pdf
make release  # builds index.pdf, then packages sources + PDF into NS26Z186.zip
make clean    # removes index.pdf and NS26Z186.zip
```

## Layout

- `inverter.sch` / `.spice` -- the static CMOS inverter subcircuit (nMOS
  `0.42/0.15`, pMOS `width_p/0.15`) shared by every part below
- `ignd.sch` / `.spice` -- copy of the inverter subcircuit with an extra
  grounded-through-ammeter tap, used to sense supply current for the delay/EDP
  sweeps in Part 1(b)/(c)
- `assign1a.sch` / `.spice` -- Problem 1(a): delay vs.\ `Wp` (0.42/0.84/1.26 um) at VDD=1.8V
- `assign1b.sch` / `.spice` -- Problem 1(b): delay vs.\ VDD (1.0--1.8V)
- `assign1c.sch` / `.spice` -- Problem 1(c): energy-delay product vs.\ VDD
- `assign2a.sch` / `.spice` -- Problem 2(a): 7-stage ring oscillator frequency at VDD=1.8V
- `assign2b.sch` / `.spice` -- Problem 2(b): 7-stage ring oscillator frequency/period vs.\ VDD
- `assign2c.sch` / `.spice` -- Problem 2(c): 9-stage ring oscillator frequency/period vs.\ VDD
- `figures/` -- schematic screenshots and plots used in the report
- `index.tex` / `index.pdf` -- the report source and build output
