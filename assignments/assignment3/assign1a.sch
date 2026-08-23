v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -320 280 -320 320 {lab=GND}
N -530 290 -530 320 {lab=GND}
N -530 200 -530 230 {lab=VDD}
N -320 160 -320 220 {lab=inp}
N -120 -120 -80 -120 {lab=#net1}
N -500 -120 -420 -120 {lab=inp}
N -280 -120 -120 -120 {lab=#net1}
N 60 -120 320 -120 {lab=out}
C {vsource.sym} -320 250 0 0 {name=vin value="PULSE(0 1.8 0 5PS 5PS 50PS 300PS 5)" savecurrent=false}
C {gnd.sym} -320 320 0 0 {name=l3 lab=GND}
C {code_shown.sym} 580 -580 0 0 {name=sim only_toplevel=false value="
.param width_p = 0.42

.control
* Run 1: Wp = 0.42
alterparam width_p = 0.42
reset
tran 0.1p 250p
let out_042 = v(out)
let in_042  = v(inp)
meas tran tlh_042 trig v(inp) val=0.9 rise=1 targ v(out) val=0.9 rise=1
meas tran thl_042 trig v(inp) val=0.9 fall=1 targ v(out) val=0.9 fall=1
let delay_042 = (tlh_042 + thl_042) / 2
echo Wp = 0.42 : delay = $&delay_042

* Run 2: Wp = 0.84
alterparam width_p = 0.84
reset
tran 0.1p 250p
let out_084 = v(out)
let in_084  = v(inp)
meas tran tlh_084 trig v(inp) val=0.9 rise=1 targ v(out) val=0.9 rise=1
meas tran thl_084 trig v(inp) val=0.9 fall=1 targ v(out) val=0.9 fall=1
let delay_084 = (tlh_084 + thl_084) / 2
echo Wp = 0.84 : delay = $&delay_084

* Run 3: Wp = 1.26
alterparam width_p = 1.26
reset
tran 0.1p 250p
let out_126 = v(out)
let in_126  = v(inp)
meas tran tlh_126 trig v(inp) val=0.9 rise=1 targ v(out) val=0.9 rise=1
meas tran thl_126 trig v(inp) val=0.9 fall=1 targ v(out) val=0.9 fall=1
let delay_126 = (tlh_126 + thl_126) / 2
echo Wp = 1.26 : delay = $&delay_126

* Overlay all three runs on one plot, each curve tagged by its Wp
plot tran1.out_042 tran2.out_084 tran3.out_126 tran1.in_042 xlabel Time ylabel Voltage title 'v(out) for Wp = 0.42 / 0.84 / 1.26'
.endc
"}
C {sky130_fd_pr/corner.sym} 590 300 0 0 {name=CORNER only_toplevel=false corner=tt}
C {vsource.sym} -530 260 0 0 {name=vin1 value=1.8 savecurrent=false}
C {gnd.sym} -530 320 0 0 {name=l1 lab=GND}
C {vdd.sym} -530 200 0 0 {name=l7 lab=VDD}
C {lab_wire.sym} -320 160 0 0 {name=p1 sig_type=std_logic lab=inp}
C {inverter.sym} -270 -120 0 0 {name=x1}
C {inverter.sym} 70 -120 0 0 {name=x2}
C {lab_wire.sym} -500 -120 0 0 {name=p2 sig_type=std_logic lab=inp}
C {lab_wire.sym} 320 -120 0 0 {name=p3 sig_type=std_logic lab=out}
