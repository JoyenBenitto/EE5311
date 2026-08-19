v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 550 250 550 340 {lab=#net1}
N 270 220 270 260 {lab=vin}
N 270 320 270 360 {lab=GND}
N 820 400 820 440 {lab=GND}
N 550 400 550 440 {lab=GND}
N 550 290 740 290 {lab=#net1}
N 740 220 740 290 {lab=#net1}
N 740 220 780 220 {lab=#net1}
N 740 290 740 370 {lab=#net1}
N 740 370 780 370 {lab=#net1}
N 820 250 820 340 {lab=vout}
N 820 280 930 280 {lab=vout}
N 550 140 550 190 {lab=VDD}
N 820 140 820 190 {lab=VDD}
N 430 220 430 300 {lab=vin}
N 430 220 510 220 {lab=vin}
N 430 370 510 370 {lab=vin}
N 430 300 430 370 {lab=vin}
C {sky130_fd_pr/pfet3_01v8.sym} 530 220 0 0 {name=M1
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
C {sky130_fd_pr/nfet3_01v8.sym} 530 370 0 0 {name=M2
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
C {sky130_fd_pr/pfet3_01v8.sym} 800 220 0 0 {name=M3
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
C {sky130_fd_pr/nfet3_01v8.sym} 800 370 0 0 {name=M4
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
C {vdd.sym} 550 140 0 0 {name=l2 lab=VDD}
C {vsource.sym} 270 290 0 0 {name=vin value=1.8 savecurrent=false}
C {gnd.sym} 270 360 0 0 {name=l3 lab=GND}
C {gnd.sym} 820 440 0 0 {name=l4 lab=GND}
C {gnd.sym} 550 440 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 930 280 0 0 {name=p1 sig_type=std_logic lab=vout}
C {vdd.sym} 820 140 0 0 {name=l6 lab=VDD}
C {lab_wire.sym} 270 220 0 0 {name=p2 sig_type=std_logic lab=vin}
C {lab_wire.sym} 430 300 0 0 {name=p3 sig_type=std_logic lab=vin}
C {code_shown.sym} 1150 90 0 0 {name=sim only_toplevel=false value=blabla}
C {sky130_fd_pr/corner.sym} 1150 250 0 0 {name=CORNER only_toplevel=false corner=tt}
