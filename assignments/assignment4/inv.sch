v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 120 30 120 150 {lab=out}
N 120 -70 120 -30 {lab=DVDD}
N -0 80 50 80 {lab=in}
N 50 0 50 80 {lab=in}
N 50 0 80 0 {lab=in}
N 50 180 80 180 {lab=in}
N 50 80 50 180 {lab=in}
N 120 80 210 80 {lab=out}
N 120 210 120 260 {lab=#net1}
N 120 180 170 180 {lab=#net1}
N 170 180 170 210 {lab=#net1}
N 120 210 170 210 {lab=#net1}
N 120 0 190 -0 {lab=DVDD}
N 190 -30 190 0 {lab=DVDD}
N 120 -30 190 -30 {lab=DVDD}
C {ipin.sym} 0 80 0 0 {name=p1 lab=in}
C {opin.sym} 210 80 0 0 {name=p2 lab=out}
C {sky130_fd_pr/pfet_01v8.sym} 100 0 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 100 180 0 0 {name=M2
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
C {iopin.sym} 120 -70 3 0 {name=p3 lab=DVDD}
C {iopin.sym} 120 260 1 0 {name=p5 lab=DGND}
