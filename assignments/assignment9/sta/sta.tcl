# Read the tt liberty file
read_liberty /cad/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib.gz
# Read the synthesized gate-level netlist
read_verilog ../build/synth/adder_synth.v
# Set the top module
link_design adder
# Create a clock with the required time period
# Purely combinational design: virtual clock with 0 input/output delay, so reg-less in->out paths are timed
create_clock -name clk -period 3
set_input_delay 0 -clock clk [all_inputs]
set_output_delay 0 -clock clk [all_outputs]
# Before: topological critical path (includes the false path)
report_checks -path_delay max
# The path that ripples through a whole block (block cin -> block cout) can't be exercised:
# a full ripple needs every bit of the block to propagate, but then the bypass mux selects
# cin instead of the ripple carry. The last block has no mux, so its path is real.
set n $::env(STAGES)

# set_false_path -through [get_pins {genblk1[0].bypass_block_inst/cin}] -through [get_pins {genblk1[0].bypass_
# block_inst/cout}]
# set_false_path -through [get_pins {genblk1[1].bypass_block_inst/cin}] -through [get_pins {genblk1[1].bypass_
# block_inst/cout}]
# set_false_path -through [get_pins {genblk1[2].bypass_block_inst/cin}] -through [get_pins {genblk1[2].bypass_
# block_inst/cout}]

for {set i 0} {$i < $n - 1} {incr i} {
    set blk "genblk1\[$i\].bypass_block_inst"
    set_false_path -through [get_pins "$blk/cin"] -through [get_pins "$blk/cout"]
}
# After: the real critical path
report_checks -path_delay max
