v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -640 200 -640 240 {lab=GND}
N -620 -140 -620 -100 {lab=VDD}
N -620 -40 -620 0 {lab=GND}
N -640 120 -640 140 {lab=inp}
N 160 10 290 10 {lab=GND}
N 290 10 290 110 {lab=GND}
N 160 30 220 30 {lab=out1}
N 220 30 220 110 {lab=out1}
N 160 -30 190 -30 {lab=VDD}
N 190 -190 190 -30 {lab=VDD}
N -240 -30 -140 -30 {lab=inp}
C {vsource.sym} -640 170 0 0 {name=vin value="PULSE 0 1.8 10ps 5ps 5ps 100ps 250ps" savecurrent=false}
C {vsource.sym} -620 -70 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} -640 240 0 0 {name=l1 lab=GND}
C {vdd.sym} -620 -140 0 0 {name=l2 lab=VDD}
C {gnd.sym} -620 0 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -640 120 0 0 {name=p1 sig_type=std_logic lab=inp}
C {code_shown.sym} 590 -320 0 0 {name=sim only_toplevel=false value="
.include inv_tb_extracted.spice
.control
tran 0.1p 250p
plot v(out1) v(inp)
meas tran tlh trig v(inp) val=0.9 rise=1 targ v(out1) val=0.9 rise=1
meas tran thl trig v(inp) val=0.9 fall=1 targ v(out1) val=0.9 fall=1
let delay= ($&thl + $&tlh) /2
echo delay: $&delay
.endc
"}
C {sky130_fd_pr/corner.sym} 670 -60 0 0 {name=CORNER only_toplevel=false corner=tt}
C {lab_wire.sym} -240 -30 0 0 {name=p2 sig_type=std_logic lab=inp}
C {vdd.sym} 190 -190 0 0 {name=l4 lab=VDD}
C {gnd.sym} 290 110 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 220 110 0 0 {name=p3 sig_type=std_logic lab=out1}
C {inv_tb.sym} 10 0 0 0 {name=x1}
