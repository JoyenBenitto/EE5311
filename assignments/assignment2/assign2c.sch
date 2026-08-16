v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 460 290 460 320 {lab=GND}
N 460 150 460 230 {lab=Vout}
N 370 120 420 120 {lab=GND}
N 370 120 370 160 {lab=GND}
N 150 170 150 200 {lab=GND}
N 150 70 150 110 {lab=VDD}
N 460 50 460 90 {lab=VDD}
N 460 180 610 180 {lab=Vout}
N 240 320 240 340 {lab=GND}
N 240 240 240 260 {lab=Vin}
N 370 260 420 260 {lab=Vin}
C {sky130_fd_pr/pfet3_01v8.sym} 440 120 0 0 {name=M1
W=0.42
L=0.30
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 440 260 0 0 {name=M2
W=0.42
L=0.15
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 460 320 0 0 {name=l1 lab=GND}
C {gnd.sym} 370 160 0 0 {name=l2 lab=GND}
C {gnd.sym} 240 340 0 0 {name=l3 lab=GND}
C {vsource.sym} 150 140 0 0 {name=Vin1 value=1.8 savecurrent=false}
C {gnd.sym} 150 200 0 0 {name=l4 lab=GND}
C {vdd.sym} 150 70 0 0 {name=l5 lab=VDD}
C {lab_wire.sym} 460 50 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 610 180 0 0 {name=p2 sig_type=std_logic lab=Vout}
C {code_shown.sym} 780 80 0 0 {name=sim only_toplevel=false value="
.control
dc Vin 0 1.8 0.01
plot v(Vout) vs v(Vin)
* Run a single operating point or check the value at Vin = 1.8V
print v(VDD) * abs(i(Vin1))
.endc
"}
C {sky130_fd_pr/corner.sym} 790 290 0 0 {name=CORNER only_toplevel=false corner=tt}
C {vsource.sym} 240 290 0 0 {name=Vin value=1.8 savecurrent=false}
C {lab_wire.sym} 240 240 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 370 260 0 0 {name=p4 sig_type=std_logic lab=Vin}
