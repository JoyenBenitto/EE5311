v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -380 -110 -380 -70 {lab=VDD}
N -380 -10 -380 20 {lab=GND}
N -50 -0 -10 0 {lab=VDD}
N -270 -10 -270 20 {lab=GND}
N -150 0 -110 0 {lab=Vds}
N -140 130 -140 150 {lab=GND}
N -140 0 -140 70 {lab=Vds}
N -80 -70 -80 -40 {lab=GND}
N -80 -70 50 -70 {lab=GND}
N 50 -70 50 120 {lab=GND}
N 50 120 50 130 {lab=GND}
N -140 150 50 150 {lab=GND}
N 50 130 50 150 {lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} -80 -20 1 0 {name=M1
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
C {vdd.sym} -380 -110 0 0 {name=l1 lab=VDD}
C {vsource.sym} -380 -40 0 0 {name=Vsrc value=1.8 savecurrent=false}
C {gnd.sym} -380 20 0 0 {name=l2 lab=GND}
C {vdd.sym} -10 0 1 0 {name=l3 lab=VDD}
C {vsource.sym} -270 -40 0 0 {name=Vds value="PULSE (1.8 0 0 10p 10p 1 1)" savecurrent=false}
C {gnd.sym} -270 20 0 0 {name=l4 lab=GND}
C {capa.sym} -140 100 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -140 150 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -270 -70 0 0 {name=p1 sig_type=std_logic lab=Vds}
C {lab_wire.sym} -150 0 0 0 {name=p2 sig_type=std_logic lab=Vds}
C {code_shown.sym} 60 -140 0 0 {name=sim only_toplevel=false value="
.include sim3b.cir
"}
C {sky130_fd_pr/corner.sym} 90 -50 0 0 {name=CORNER only_toplevel=false corner=tt}
