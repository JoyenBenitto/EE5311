v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 50 -160 50 -60 {lab=y}
N -70 -110 -30 -110 {lab=a}
N -30 -190 -30 -110 {lab=a}
N -30 -190 10 -190 {lab=a}
N -30 -30 10 -30 {lab=a}
N -30 -110 -30 -30 {lab=a}
N 50 -110 160 -110 {lab=y}
N 50 -250 50 -220 {lab=VDD}
N 50 0 50 30 {lab=y}
C {sky130_fd_pr/nfet3_01v8.sym} 30 -30 0 0 {name=M1
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
C {sky130_fd_pr/pfet3_01v8.sym} 30 -190 0 0 {name=M2
W=\{width_p\}
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
C {ipin.sym} -70 -110 0 0 {name=p1 lab=a}
C {opin.sym} 160 -110 0 0 {name=p2 lab=y}
C {vdd.sym} 50 -250 0 0 {name=l1 lab=VDD}
C {opin.sym} 50 30 1 0 {name=p3 lab=to_gnd}
