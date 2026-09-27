v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 120 10 150 10 {lab=gnd}
N 150 10 150 20 {lab=gnd}
N 120 -30 140 -30 {lab=VDD}
N 140 -90 140 -30 {lab=VDD}
N -690 -140 -690 -30 {lab=VDD}
N -690 30 -690 140 {lab=gnd}
N 120 -10 180 -10 {lab=cout}
N -220 -30 -180 -30 {lab=a}
N -220 -10 -180 -10 {lab=b}
N -220 10 -180 10 {lab=c}
N -500 -80 -500 40 {lab=b}
N -590 -80 -590 -30 {lab=a}
N -390 -80 -390 -30 {lab=c}
N -690 140 -390 140 {lab=gnd}
N -390 30 -390 140 {lab=gnd}
N -500 100 -500 140 {lab=gnd}
N -590 30 -590 140 {lab=gnd}
C {carry.sym} -30 -10 0 0 {name=x1}
C {code_shown.sym} 350 -530 0 0 {name=sim only_toplevel=false value="
.include "carry_extracted_for_sim.spice"
* carry_extracted.spice declares pin order (a GND VDD b cout cin), which does NOT
* match carry.sym's schematic pin order (VDD a b cin cout GND). Wrap it so the
* x1 instantiation below (generated from carry.sym) binds to the right nodes.
.subckt carry VDD a b cin cout GND
X0 a GND VDD b cout cin carry_layout
.ends

.control
* Walk a,b,cin through all 8 combinations (binary counter: cin fastest, a slowest)
alter @va[pulse]  = [ 0 1.8 0 10p 10p 4n 8n ]
alter @va1[pulse] = [ 0 1.8 0 10p 10p 2n 4n ]
alter @va2[pulse] = [ 0 1.8 0 10p 10p 1n 2n ]

* Run simulation
tran 1p 8n
* Sample cout at the center of each of the 8 settled windows
meas tran cout_000 FIND v(cout) AT=7.5n
meas tran cout_001 FIND v(cout) AT=6.5n
meas tran cout_010 FIND v(cout) AT=5.5n
meas tran cout_011 FIND v(cout) AT=4.5n
meas tran cout_100 FIND v(cout) AT=3.5n
meas tran cout_101 FIND v(cout) AT=2.5n
meas tran cout_110 FIND v(cout) AT=1.5n
meas tran cout_111 FIND v(cout) AT=0.5n
plot v(a) v(b) v(c) v(cout)
.endc
"}
C {sky130_fd_pr/corner.sym} 490 10 0 0 {name=CORNER only_toplevel=false corner=tt}
C {gnd.sym} 150 20 0 0 {name=l3 lab=gnd}
C {vdd.sym} 140 -90 0 0 {name=l4 lab=VDD}
C {vdd.sym} -690 -140 0 0 {name=l9 lab=VDD}
C {gnd.sym} -690 140 0 0 {name=l10 lab=gnd}
C {vsource.sym} -690 0 0 0 {name=vdd value=1.8 savecurrent=false}
C {vsource.sym} -590 0 0 0 {name=va value=0 savecurrent=false}
C {lab_wire.sym} -590 -80 0 0 {name=p1 sig_type=std_logic lab=a}
C {lab_wire.sym} -220 -30 0 0 {name=p2 sig_type=std_logic lab=a}
C {vsource.sym} -500 70 0 0 {name=va1 value=0 savecurrent=false}
C {vsource.sym} -390 0 0 0 {name=va2 value=1.8 savecurrent=false}
C {lab_wire.sym} -500 -80 0 0 {name=p3 sig_type=std_logic lab=b}
C {lab_wire.sym} -390 -80 0 0 {name=p4 sig_type=std_logic lab=c}
C {lab_wire.sym} -220 -10 0 0 {name=p5 sig_type=std_logic lab=b}
C {lab_wire.sym} -220 10 0 0 {name=p6 sig_type=std_logic lab=c}
C {lab_wire.sym} 180 -10 0 0 {name=p7 sig_type=std_logic lab=cout}
