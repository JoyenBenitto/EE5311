v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -170 -0 -80 0 {lab=#net1}
N -40 -80 -40 -30 {lab=#net2}
N -40 30 -40 60 {lab=#net3}
N -40 120 -40 160 {lab=GND}
N -170 60 -170 160 {lab=GND}
N -170 160 -40 160 {lab=GND}
N -40 -0 80 0 {lab=GND}
N 80 0 80 160 {lab=GND}
N -40 160 80 160 {lab=GND}
N 20 -80 80 -80 {lab=GND}
N 80 -80 80 -0 {lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -60 0 0 0 {name=M1
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
C {vsource.sym} -170 30 0 0 {name=Vgs value=1.8 savecurrent=false}
C {gnd.sym} -40 160 0 0 {name=l1 lab=GND}
C {vsource.sym} -10 -80 3 0 {name=Vds value=1.8 savecurrent=false}
C {capa.sym} -40 90 0 0 {name=C1
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {code_shown.sym} 240 -130 0 0 {name=sim only_toplevel=false value="
.include sim3b.cir
"}
C {sky130_fd_pr/corner.sym} 240 -20 0 0 {name=CORNER only_toplevel=false corner=tt}
