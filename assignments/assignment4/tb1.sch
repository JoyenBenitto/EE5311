v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -410 140 -410 180 {lab=GND}
N -390 -200 -390 -160 {lab=VDD}
N -40 50 -40 100 {lab=GND}
N 170 50 170 90 {lab=GND}
N -390 -100 -390 -60 {lab=GND}
N -410 60 -410 80 {lab=inp}
N -170 10 -100 10 {lab=inp}
N -40 -80 -40 -30 {lab=VDD}
N -40 -80 170 -80 {lab=VDD}
N 170 -80 170 -30 {lab=VDD}
N 60 -130 60 -80 {lab=VDD}
N 20 10 110 10 {lab=#net1}
C {inv.sym} 0 10 0 0 {name=x1}
C {inv.sym} 210 10 0 0 {name=x2}
C {vsource.sym} -410 110 0 0 {name=vin value="PULSE 0 1.8 10ps 5ps 5ps 100ps 250ps" savecurrent=false}
C {vsource.sym} -390 -130 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} -410 180 0 0 {name=l1 lab=GND}
C {vdd.sym} -390 -200 0 0 {name=l2 lab=VDD}
C {gnd.sym} -390 -60 0 0 {name=l3 lab=GND}
C {gnd.sym} -40 100 0 0 {name=l4 lab=GND}
C {gnd.sym} 170 90 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -410 60 0 0 {name=p1 sig_type=std_logic lab=inp}
C {lab_wire.sym} -170 10 0 0 {name=p2 sig_type=std_logic lab=inp}
C {vdd.sym} 60 -130 0 0 {name=l6 lab=VDD}
C {code_shown.sym} 460 -310 0 0 {name=sim only_toplevel=false value="
.include inv_extracted.spice
.control
tran 0.1p 250p
plot v(net1) v(inp)
meas tran tlh trig v(inp) val=0.9 rise=1 targ v(net1) val=0.9 rise=1
meas tran thl trig v(inp) val=0.9 fall=1 targ v(net1) val=0.9 fall=1
let delay= ($&thl + $&tlh) /2
echo delay: $&delay
.endc
"}
C {sky130_fd_pr/corner.sym} 540 -50 0 0 {name=CORNER only_toplevel=false corner=tt}
