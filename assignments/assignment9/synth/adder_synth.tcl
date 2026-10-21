read_liberty -lib /cad/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib.gz
read_verilog -sv ../sv_src/fa.sv ../sv_src/adder.sv
synth -top adder -flatten
dfflibmap -liberty /cad/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib.gz
abc -liberty /cad/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib.gz
stat
write_verilog -noattr ../build/synth/adder_synth.v
show -format svg -viewer none -prefix ../build/synth/adder
