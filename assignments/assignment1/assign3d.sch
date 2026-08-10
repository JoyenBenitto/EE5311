v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 190 200 190 240 {lab=VDD}
N 190 300 190 330 {lab=GND}
N 520 310 560 310 {lab=VDD}
N 190 450 190 480 {lab=GND}
N 420 310 460 310 {lab=Vds}
N 490 240 490 270 {lab=GND}
N 490 240 620 240 {lab=GND}
N 620 240 620 430 {lab=GND}
N 620 430 620 440 {lab=GND}
N 620 440 620 460 {lab=GND}
N 540 310 540 350 {lab=VDD}
N 540 410 540 460 {lab=GND}
N 540 460 620 460 {lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} 490 290 1 0 {name=M1
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
C {vdd.sym} 190 200 0 0 {name=l1 lab=VDD}
C {vsource.sym} 190 270 0 0 {name=Vsrc value=1.8 savecurrent=false}
C {gnd.sym} 190 330 0 0 {name=l2 lab=GND}
C {vdd.sym} 560 310 1 0 {name=l3 lab=VDD}
C {vsource.sym} 190 420 0 0 {name=Vds value="PULSE (1.8 0 0 10p 10p 1 1)" savecurrent=false}
C {gnd.sym} 190 480 0 0 {name=l4 lab=GND}
C {capa.sym} 540 380 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 540 460 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 190 390 0 0 {name=p1 sig_type=std_logic lab=Vds}
C {lab_wire.sym} 420 310 0 0 {name=p2 sig_type=std_logic lab=Vds}
C {code_shown.sym} 630 170 0 0 {name=sim only_toplevel=false value="
.include sim3d.cir
"}
C {sky130_fd_pr/corner.sym} 660 260 0 0 {name=CORNER only_toplevel=false corner=tt}
