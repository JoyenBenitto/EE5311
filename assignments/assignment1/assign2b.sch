v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -60 -10 80 -10 {lab=#net1}
N 80 -20 80 -10 {lab=#net1}
N 120 -100 120 -50 {lab=GND}
N 120 -100 330 -90 {lab=GND}
N 330 -90 330 100 {lab=GND}
N 330 100 400 100 {lab=GND}
N 120 10 120 60 {lab=#net2}
N 180 60 280 60 {lab=GND}
N 280 60 280 100 {lab=GND}
N 280 100 330 100 {lab=GND}
N -60 50 -60 100 {lab=GND}
N -60 100 280 100 {lab=GND}
N 420 10 420 100 {lab=GND}
N 400 100 420 100 {lab=GND}
C {vsource.sym} -60 20 0 0 {name=Vgd value=1.8 savecurrent=false}
C {vsource.sym} 150 60 3 0 {name=Vds value=1.8 savecurrent=false}
C {gnd.sym} 400 100 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} 100 -20 0 0 {name=M1
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
C {sky130_fd_pr/corner.sym} 480 -220 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 510 -40 0 0 {name=sim only_toplevel=false value="
.include sim2b.cir
"}
C {vdd.sym} 420 -50 0 0 {name=l1 lab=VDD}
C {vsource.sym} 420 -20 0 0 {name=Vb value=1.8 savecurrent=false}
