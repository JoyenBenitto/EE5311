v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 40 30 40 120 {lab=#net1}
N -240 0 -240 40 {lab=vin}
N -240 100 -240 140 {lab=GND}
N 310 180 310 220 {lab=GND}
N 40 180 40 220 {lab=GND}
N 40 70 230 70 {lab=#net1}
N 230 0 230 70 {lab=#net1}
N 230 0 270 -0 {lab=#net1}
N 230 70 230 150 {lab=#net1}
N 230 150 270 150 {lab=#net1}
N 310 30 310 120 {lab=vout}
N 310 60 420 60 {lab=vout}
N 40 -80 40 -30 {lab=VDD}
N 310 -80 310 -30 {lab=VDD}
N -80 0 -80 80 {lab=vin}
N -80 0 -0 -0 {lab=vin}
N -80 150 -0 150 {lab=vin}
N -80 80 -80 150 {lab=vin}
C {sky130_fd_pr/pfet3_01v8.sym} 20 0 0 0 {name=M1
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
C {sky130_fd_pr/nfet3_01v8.sym} 20 150 0 0 {name=M2
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
C {sky130_fd_pr/pfet3_01v8.sym} 290 0 0 0 {name=M3
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
C {sky130_fd_pr/nfet3_01v8.sym} 290 150 0 0 {name=M4
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
C {vdd.sym} 40 -80 0 0 {name=l2 lab=VDD}
C {vsource.sym} -240 70 0 0 {name=vin value=1.8 savecurrent=false}
C {gnd.sym} -240 140 0 0 {name=l3 lab=GND}
C {gnd.sym} 310 220 0 0 {name=l4 lab=GND}
C {gnd.sym} 40 220 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 420 60 0 0 {name=p1 sig_type=std_logic lab=vout}
C {vdd.sym} 310 -80 0 0 {name=l6 lab=VDD}
C {lab_wire.sym} -240 0 0 0 {name=p2 sig_type=std_logic lab=vin}
C {lab_wire.sym} -80 80 0 0 {name=p3 sig_type=std_logic lab=vin}
C {code_shown.sym} 640 -130 0 0 {name=sim only_toplevel=false value=blabla}
C {sky130_fd_pr/corner.sym} 640 30 0 0 {name=CORNER only_toplevel=false corner=tt}
