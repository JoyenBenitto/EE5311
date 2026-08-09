v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 930 -170 930 -100 {lab=#net1}
N 800 -70 890 -70 {lab=VDD}
N 930 -40 930 10 {lab=GND}
N 990 -170 1070 -170 {lab=GND}
N 1070 -170 1070 20 {lab=GND}
N 930 20 1070 20 {lab=GND}
N 930 10 930 20 {lab=GND}
N 610 -150 610 -120 {lab=VDD}
N 610 -60 610 -30 {lab=GND}
C {code_shown.sym} 310 -180 0 0 {name=sim only_toplevel=false
value="
.include sim1c.cir
"}
C {sky130_fd_pr/corner.sym} 130 -220 0 0 {name=CORNER only_toplevel=false corner=tt}
C {sky130_fd_pr/nfet3_01v8.sym} 910 -70 0 0 {name=M1
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
C {gnd.sym} 930 10 0 0 {name=l1 lab=GND}
C {vsource.sym} 960 -170 3 0 {name=Vds value=1.8 savecurrent=false}
C {vdd.sym} 800 -70 0 0 {name=l2 lab=VDD}
C {vsource.sym} 610 -90 0 0 {name=Vgs value=1.8 savecurrent=false}
C {vdd.sym} 610 -150 0 0 {name=l3 lab=VDD}
C {gnd.sym} 610 -30 0 0 {name=l4 lab=GND}
