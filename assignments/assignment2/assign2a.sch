v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 150 170 150 200 {lab=GND}
N 150 30 150 110 {lab=Vout}
N 60 0 110 0 {lab=GND}
N 60 0 60 40 {lab=GND}
N -160 50 -160 80 {lab=GND}
N -160 -50 -160 -10 {lab=VDD}
N 150 -70 150 -30 {lab=VDD}
N 150 60 300 60 {lab=Vout}
N -70 200 -70 220 {lab=GND}
N -70 120 -70 140 {lab=Vin}
N 60 140 110 140 {lab=Vin}
C {sky130_fd_pr/pfet3_01v8.sym} 130 0 0 0 {name=M1
W=0.42
L=0.30
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
C {sky130_fd_pr/nfet3_01v8.sym} 130 140 0 0 {name=M2
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
C {gnd.sym} 150 200 0 0 {name=l1 lab=GND}
C {gnd.sym} 60 40 0 0 {name=l2 lab=GND}
C {gnd.sym} -70 220 0 0 {name=l3 lab=GND}
C {vsource.sym} -160 20 0 0 {name=Vin1 value=1.8 savecurrent=false}
C {gnd.sym} -160 80 0 0 {name=l4 lab=GND}
C {vdd.sym} -160 -50 0 0 {name=l5 lab=VDD}
C {lab_wire.sym} 150 -70 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 300 60 0 0 {name=p2 sig_type=std_logic lab=Vout}
C {code_shown.sym} 470 -40 0 0 {name=sim only_toplevel=false value="
.control
dc Vin 0 1.8 0.01
plot v(Vout) vs v(Vin)
meas dc vth find v(Vin) when v(Vout)=v(Vin)
.endc
"}
C {sky130_fd_pr/corner.sym} 480 170 0 0 {name=CORNER only_toplevel=false corner=tt}
C {vsource.sym} -70 170 0 0 {name=Vin value=1.8 savecurrent=false}
C {lab_wire.sym} -70 120 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 60 140 0 0 {name=p4 sig_type=std_logic lab=Vin}
