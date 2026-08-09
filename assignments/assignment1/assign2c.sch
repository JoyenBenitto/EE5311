v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -300 0 -160 0 {lab=#net1}
N -160 -10 -160 0 {lab=#net1}
N -120 -90 -120 -40 {lab=GND}
N -120 -90 90 -80 {lab=GND}
N 90 -80 90 110 {lab=GND}
N 90 110 160 110 {lab=GND}
N -120 20 -120 70 {lab=#net2}
N -60 70 40 70 {lab=GND}
N 40 70 40 110 {lab=GND}
N 40 110 90 110 {lab=GND}
N -300 60 -300 110 {lab=GND}
N -300 110 40 110 {lab=GND}
N 180 20 180 110 {lab=GND}
N 160 110 180 110 {lab=GND}
C {vsource.sym} -300 30 0 0 {name=Vgd value=-1.8 savecurrent=false}
C {vsource.sym} -90 70 3 0 {name=Vds value=1.8 savecurrent=false}
C {gnd.sym} 160 110 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} -140 -10 0 0 {name=M1
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
C {sky130_fd_pr/corner.sym} 240 -210 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 270 -30 0 0 {name=sim only_toplevel=false value="
.include sim2c.cir
"}
C {vdd.sym} 180 -40 0 0 {name=l1 lab=VDD}
C {vsource.sym} 180 -10 0 0 {name=Vb value=1.8 savecurrent=false}
