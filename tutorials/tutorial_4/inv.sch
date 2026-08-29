v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -50 -60 -20 -60 {lab=in}
N -20 -140 -20 -60 {lab=in}
N -20 -140 -0 -140 {lab=in}
N -20 50 -0 50 {lab=in}
N -20 -60 -20 50 {lab=in}
N 40 -110 40 20 {lab=out}
N 40 -60 90 -60 {lab=out}
N 40 80 40 120 {lab=DGND}
N 40 -200 40 -170 {lab=DVDD}
N 40 -170 80 -170 {lab=DVDD}
N 80 -170 80 -150 {lab=DVDD}
N 30 -150 80 -150 {lab=DVDD}
N 30 40 70 40 {lab=DGND}
N 70 40 70 80 {lab=DGND}
N 40 80 70 80 {lab=DGND}
C {opin.sym} 90 -60 0 0 {name=p1 lab=out}
C {ipin.sym} -50 -60 0 0 {name=p2 lab=in}
C {sky130_fd_pr/nfet3_01v8.sym} 20 50 0 0 {name=M2
W=0.42
L=0.15
body=DGND
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
C {sky130_fd_pr/pfet3_01v8.sym} 20 -140 0 0 {name=M1
W=1
L=0.15
body=DVDD
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
C {iopin.sym} 40 120 1 0 {name=p3 lab=DGND}
C {iopin.sym} 40 -200 3 0 {name=p4 lab=DVDD}
