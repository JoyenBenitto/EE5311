v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -70 -90 -0 -90 {lab=in}
N 110 -80 150 -80 {lab=out}
N 0 -150 20 -150 {lab=in}
N 0 -150 0 -90 {lab=in}
N 80 -150 110 -150 {lab=out}
N 110 -150 110 -80 {lab=out}
N 50 -240 50 -190 {lab=phi}
N 0 -0 30 -0 {lab=in}
N 0 -90 0 -0 {lab=in}
N 90 -0 110 -0 {lab=out}
N 110 -80 110 -0 {lab=out}
N 60 40 60 80 {lab=phi_bar}
N 50 -150 50 -130 {lab=VDD}
N 50 -130 160 -130 {lab=VDD}
N 160 -160 160 -130 {lab=VDD}
N 60 -20 60 0 {lab=GND}
N 60 -20 170 -20 {lab=GND}
C {ipin.sym} -70 -90 0 0 {name=p1 lab=in}
C {opin.sym} 150 -80 0 0 {name=p2 lab=out}
C {ipin.sym} 50 -240 1 0 {name=p3 lab=phi}
C {ipin.sym} 60 80 3 0 {name=p4 lab=phi_bar}
C {sky130_fd_pr/nfet_01v8.sym} 60 20 3 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 50 -170 1 0 {name=M4
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
model=pfet_01v8
spiceprefix=X
}
C {iopin.sym} 170 -20 0 0 {name=p5 lab=GND}
C {iopin.sym} 160 -160 0 0 {name=p6 lab=VDD}
