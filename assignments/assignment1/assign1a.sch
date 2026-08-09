v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -200 -300 -200 -240 {lab=GND}
N -200 -240 -80 -240 {lab=GND}
N 20 -310 20 -240 {lab=GND}
N -80 -240 20 -240 {lab=GND}
N -200 -360 -20 -360 {lab=#net1}
N -20 -360 -20 -340 {lab=#net1}
N -20 -370 20 -370 {lab=#net1}
N -20 -370 -20 -340 {lab=#net1}
N 20 -340 120 -340 {lab=GND}
N 120 -340 120 -240 {lab=GND}
N 20 -240 120 -240 {lab=GND}
C {vsource.sym} -200 -330 0 0 {name=Vin value=1.8 savecurrent=false}
C {sky130_fd_pr/nfet_01v8.sym} 0 -340 0 0 {name=M1
W=0.42
L=0.15
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
C {gnd.sym} -80 -240 0 0 {name=l1 lab=GND}
C {code_shown.sym} 210 -410 0 0 {name=sim only_toplevel=false 
value="
.include sim1a.cir
"}
C {sky130_fd_pr/corner.sym} 220 -300 0 0 {name=CORNER only_toplevel=false corner=tt}
