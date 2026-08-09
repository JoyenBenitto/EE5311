v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 140 -10 250 -10 {lab=#net1}
N 250 -10 250 20 {lab=#net1}
N 250 20 290 20 {lab=#net1}
N 290 -40 490 -40 {lab=GND}
N 490 -40 490 40 {lab=GND}
N 140 50 460 40 {lab=GND}
N 460 20 460 40 {lab=GND}
N 460 20 490 20 {lab=GND}
C {code_shown.sym} 100 -380 0 0 {name=sim only_toplevel=false
value="
.include sim2a.cir
"}
C {sky130_fd_pr/corner.sym} 100 -300 0 0 {name=CORNER only_toplevel=false corner=tt}
C {gnd.sym} 490 40 0 0 {name=l1 lab=GND}
C {vsource.sym} 140 20 0 0 {name=Vgs value=1.8 savecurrent=false}
C {sky130_fd_pr/pfet3_01v8.sym} 270 -10 0 0 {name=M1
W=0.42
L=0.15
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
