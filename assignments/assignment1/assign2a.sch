v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 40 40 40 90 {lab=GND}
N 40 -60 40 -20 {lab=VDD}
N 130 40 130 70 {lab=GND}
N 220 50 250 50 {lab=Vin}
N 290 -10 290 20 {lab=VDD}
N 250 50 250 130 {lab=Vin}
N 250 130 290 130 {lab=Vin}
N 290 80 290 130 {lab=Vin}
C {code_shown.sym} 100 -380 0 0 {name=sim only_toplevel=false
value="
.include sim2a.cir
"}
C {sky130_fd_pr/corner.sym} 100 -300 0 0 {name=CORNER only_toplevel=false corner=tt}
C {gnd.sym} 40 90 0 0 {name=l1 lab=GND}
C {vsource.sym} 40 10 0 0 {name=Vdd value=1.8 savecurrent=false}
C {sky130_fd_pr/pfet3_01v8.sym} 270 50 0 0 {name=M1
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
C {vdd.sym} 40 -60 0 0 {name=l2 lab=VDD}
C {vsource.sym} 130 10 0 0 {name=Vin value=1.8 savecurrent=false}
C {gnd.sym} 130 70 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 130 -20 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 220 50 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {vdd.sym} 290 -10 0 0 {name=l4 lab=VDD}
