v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -10 -40 80 -40 {lab=VDD}
N 80 -130 80 -40 {lab=VDD}
N -70 -40 -50 -40 {lab=in}
N -70 -40 -70 140 {lab=in}
N -70 140 -50 140 {lab=in}
N -130 50 -70 50 {lab=in}
N -10 -100 -10 -70 {lab=VDD}
N -10 -100 80 -100 {lab=VDD}
N -10 170 -10 240 {lab=GND}
N -10 140 90 140 {lab=GND}
N 90 140 90 220 {lab=GND}
N -10 220 90 220 {lab=GND}
N -10 -10 -10 110 {lab=out}
N -10 60 110 60 {lab=out}
C {ipin.sym} -130 50 0 0 {name=p1 lab=in}
C {sky130_fd_pr/nfet_01v8.sym} -30 140 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} -30 -40 0 0 {name=M4
W=0.84
L=0.15
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
C {iopin.sym} -10 240 1 0 {name=p5 lab=GND}
C {iopin.sym} 80 -130 3 0 {name=p6 lab=VDD}
C {opin.sym} 110 60 0 0 {name=p2 lab=out}
