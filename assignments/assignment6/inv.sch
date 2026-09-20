v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 20 -100 110 -100 {lab=VDD}
N 110 -190 110 -100 {lab=VDD}
N -40 -100 -20 -100 {lab=in}
N -40 -100 -40 80 {lab=in}
N -40 80 -20 80 {lab=in}
N -100 -10 -40 -10 {lab=in}
N 20 -160 20 -130 {lab=VDD}
N 20 -160 110 -160 {lab=VDD}
N 20 110 20 180 {lab=GND}
N 20 80 120 80 {lab=GND}
N 120 80 120 160 {lab=GND}
N 20 160 120 160 {lab=GND}
N 20 -70 20 50 {lab=out}
N 20 -0 140 -0 {lab=out}
C {ipin.sym} -100 -10 0 0 {name=p1 lab=in}
C {sky130_fd_pr/nfet_01v8.sym} 0 80 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 0 -100 0 0 {name=M4
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
C {iopin.sym} 20 180 1 0 {name=p5 lab=GND}
C {iopin.sym} 110 -190 3 0 {name=p6 lab=VDD}
C {opin.sym} 140 0 0 0 {name=p2 lab=out}
