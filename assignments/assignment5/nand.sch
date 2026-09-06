v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 30 180 30 270 {lab=GND}
N 30 90 30 120 {lab=#net1}
N -50 -200 -50 -150 {lab=VDD}
N -50 -200 150 -200 {lab=VDD}
N 150 -200 150 -150 {lab=VDD}
N 40 -240 40 -200 {lab=VDD}
N -50 -90 -50 -60 {lab=out}
N -50 -60 150 -60 {lab=out}
N 150 -90 150 -60 {lab=out}
N 30 -60 30 30 {lab=out}
N -250 -40 -120 -40 {lab=A}
N -120 -120 -120 -40 {lab=A}
N -120 -120 -90 -120 {lab=A}
N -250 10 100 10 {lab=B}
N 100 -120 100 10 {lab=B}
N 100 -120 110 -120 {lab=B}
N -120 -40 -120 60 {lab=A}
N -120 60 -10 60 {lab=A}
N -70 150 -10 150 {lab=B}
N -70 10 -70 150 {lab=B}
N 30 -0 240 0 {lab=out}
C {sky130_fd_pr/nfet_01v8.sym} 10 60 0 0 {name=M1
W=1.68
L=0.15
nf=4
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
C {sky130_fd_pr/pfet_01v8.sym} -70 -120 0 0 {name=M2
W=1.68
L=0.15
nf=4
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
C {ipin.sym} -250 -40 0 0 {name=p1 lab=A}
C {opin.sym} 240 0 0 0 {name=p2 lab=out}
C {iopin.sym} 40 -240 3 0 {name=p3 lab=VDD}
C {iopin.sym} 30 270 1 0 {name=p4 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 10 150 0 0 {name=M3
W=1.68
L=0.15
nf=4
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
C {ipin.sym} -250 10 0 0 {name=p5 lab=B}
C {sky130_fd_pr/pfet_01v8.sym} 130 -120 0 0 {name=M4
W=1.68
L=0.15
nf=4
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
