# EE5311 -- Assignment 9: Carry-bypass adder

16- and 32-bit carry-bypass adder (4-bit ripple blocks plus a bypass mux after every block but the last),
(purely combinational). Synthesised with Yosys on sky130_fd_sc_hd (tt_025C_1v80) and timed with OpenSTA.
Run everything inside the course docker image (`/cad` PDK, `yosys`, `sta`, `iverilog`).

## Build

```
make sim   WIDTH=16|32   # iverilog testbench (100 random vectors)
make synth WIDTH=16|32   # Yosys -> build/synth/adder_synth.v
make sta   WIDTH=16|32   # OpenSTA: critical path before / after the false paths
make       # runs sim (default target)
make all     # builds index.pdf (alias: make report)
make release # builds index.pdf, then packages sources + PDF into NS26Z186.zip
make clean   # removes index.pdf and NS26Z186.zip
make nuke    # removes build/
```

`WIDTH` defaults to 16; `make sta` derives the block count as `WIDTH/4`.

## Layout

- `sv_src/` -- `adder.sv` (bypass_block, bypass_logic, adder), `fa.sv`, `adder_tb.sv`, `config.svh`
- `synth/adder_synth.tcl` -- Yosys script (`keep_hierarchy` stops ABC from removing the redundant bypass muxes)
- `sta/sta.tcl` -- STA script; false-paths `cin -> cout` of every block that has a bypass mux
- `report/` -- saved sim / synth / STA outputs and netlist diagrams for 16 and 32 bits
- `index.tex` / `index.pdf` -- report

## Results

| | 16-bit | 32-bit |
|---|---|---|
| Testbench (100 vectors) | PASS | PASS |
| Critical path, before false path | 7.05 ns (slack -4.05) | 14.48 ns (slack -11.48) |
| Critical path, after false path | 3.98 ns (slack -0.98) | 5.31 ns (slack -2.31) |

Virtual clock, 3 ns period, 0 ns I/O delay. The real critical path is ripple through block 0, all bypass muxes, then ripple through the last block.

## Status

Complete: design, testbench, synthesis, STA and report.
