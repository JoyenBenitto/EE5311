v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 460 90 590 90 {lab=GND}
N 590 90 590 210 {lab=GND}
N 370 210 590 210 {lab=GND}
N 250 150 250 210 {lab=GND}
N 250 210 370 210 {lab=GND}
N 250 90 420 90 {lab=#net1}
N 460 10 460 60 {lab=#net2}
N 460 -50 590 -50 {lab=GND}
N 590 -50 590 90 {lab=GND}
N 460 120 460 210 {lab=GND}
C {vsource.sym} 250 120 0 0 {name=Vin value=1.8 savecurrent=false}
C {sky130_fd_pr/nfet_01v8.sym} 440 90 0 0 {name=M1
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
C {gnd.sym} 370 210 0 0 {name=l1 lab=GND}
C {code_shown.sym} 660 40 0 0 {name=sim only_toplevel=false 
value="
.include sim1b.cir
"}
C {sky130_fd_pr/corner.sym} 670 150 0 0 {name=CORNER only_toplevel=false corner=tt}
C {vsource.sym} 460 -20 2 0 {name=Vds value=1.8 savecurrent=false}
