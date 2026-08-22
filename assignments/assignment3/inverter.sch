v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 20 -130 20 -30 {lab=#net1}
N -100 -80 -60 -80 {lab=a}
N -60 -160 -60 -80 {lab=a}
N -60 -160 -20 -160 {lab=a}
N -60 -0 -20 -0 {lab=a}
N -60 -80 -60 -0 {lab=a}
N 20 -80 130 -80 {lab=#net1}
N 20 -220 20 -190 {lab=VDD}
N 20 30 20 60 {lab=GND}
C {sky130_fd_pr/nfet3_01v8.sym} 0 0 0 0 {name=M1
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
C {sky130_fd_pr/pfet3_01v8.sym} 0 -160 0 0 {name=M2
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
C {ipin.sym} -100 -80 0 0 {name=p1 lab=a}
C {opin.sym} 130 -80 0 0 {name=p2 lab=y}
C {vdd.sym} 20 -220 0 0 {name=l1 lab=VDD}
C {gnd.sym} 20 60 0 0 {name=l2 lab=GND}
