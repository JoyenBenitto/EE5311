v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 330 120 330 210 {lab=#net1}
N 50 90 50 130 {lab=vin}
N 50 190 50 230 {lab=GND}
N 600 270 600 310 {lab=GND}
N 330 270 330 310 {lab=GND}
N 330 160 520 160 {lab=#net1}
N 520 90 520 160 {lab=#net1}
N 520 90 560 90 {lab=#net1}
N 520 160 520 240 {lab=#net1}
N 520 240 560 240 {lab=#net1}
N 600 120 600 210 {lab=vout}
N 600 150 710 150 {lab=vout}
N 330 10 330 60 {lab=VDD}
N 600 10 600 60 {lab=VDD}
N 210 90 210 170 {lab=vin}
N 210 90 290 90 {lab=vin}
N 210 240 290 240 {lab=vin}
N 210 170 210 240 {lab=vin}
C {sky130_fd_pr/pfet3_01v8.sym} 310 90 0 0 {name=M1
W=1
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
C {sky130_fd_pr/nfet3_01v8.sym} 310 240 0 0 {name=M2
W=1
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
C {sky130_fd_pr/pfet3_01v8.sym} 580 90 0 0 {name=M3
W=1
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
C {sky130_fd_pr/nfet3_01v8.sym} 580 240 0 0 {name=M4
W=1
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
C {vdd.sym} 330 10 0 0 {name=l2 lab=VDD}
C {vsource.sym} 50 160 0 0 {name=vin value=1.8 savecurrent=false}
C {gnd.sym} 50 230 0 0 {name=l3 lab=GND}
C {gnd.sym} 600 310 0 0 {name=l4 lab=GND}
C {gnd.sym} 330 310 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 710 150 0 0 {name=p1 sig_type=std_logic lab=vout}
C {vdd.sym} 600 10 0 0 {name=l6 lab=VDD}
C {lab_wire.sym} 50 90 0 0 {name=p2 sig_type=std_logic lab=vin}
C {lab_wire.sym} 210 170 0 0 {name=p3 sig_type=std_logic lab=vin}
C {code_shown.sym} 930 -40 0 0 {name=sim only_toplevel=false value=blabla}
C {sky130_fd_pr/corner.sym} 930 120 0 0 {name=CORNER only_toplevel=false corner=tt}
