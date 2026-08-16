v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 340 230 340 260 {lab=GND}
N 340 90 340 170 {lab=Vout}
N 250 60 300 60 {lab=GND}
N 250 60 250 100 {lab=GND}
N 30 110 30 140 {lab=GND}
N 30 10 30 50 {lab=VDD}
N 340 -10 340 30 {lab=VDD}
N 340 120 490 120 {lab=Vout}
N 120 260 120 280 {lab=GND}
N 120 180 120 200 {lab=Vin}
N 250 200 300 200 {lab=Vin}
C {sky130_fd_pr/pfet3_01v8.sym} 320 60 0 0 {name=M1
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
C {sky130_fd_pr/nfet3_01v8.sym} 320 200 0 0 {name=M2
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
C {gnd.sym} 340 260 0 0 {name=l1 lab=GND}
C {gnd.sym} 250 100 0 0 {name=l2 lab=GND}
C {gnd.sym} 120 280 0 0 {name=l3 lab=GND}
C {vsource.sym} 30 80 0 0 {name=Vin1 value=1.8 savecurrent=false}
C {gnd.sym} 30 140 0 0 {name=l4 lab=GND}
C {vdd.sym} 30 10 0 0 {name=l5 lab=VDD}
C {lab_wire.sym} 340 -10 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 490 120 0 0 {name=p2 sig_type=std_logic lab=Vout}
C {code_shown.sym} 660 20 0 0 {name=sim only_toplevel=false value="
.control
dc Vin 0 1.8 0.01
plot deriv(v(Vout))
print -i(Vin1) * 1.8
.endc
"}
C {sky130_fd_pr/corner.sym} 670 230 0 0 {name=CORNER only_toplevel=false corner=tt}
C {vsource.sym} 120 230 0 0 {name=Vin value=1.8 savecurrent=false}
C {lab_wire.sym} 120 180 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 250 200 0 0 {name=p4 sig_type=std_logic lab=Vin}
