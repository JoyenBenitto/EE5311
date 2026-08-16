v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -370 30 -370 70 {lab=GND}
N -30 -10 -30 50 {lab=Vout}
N -200 10 -100 10 {lab=Vin}
N -100 -40 -100 10 {lab=Vin}
N -100 -40 -70 -40 {lab=Vin}
N -100 80 -70 80 {lab=Vin}
N -100 10 -100 80 {lab=Vin}
N -30 20 100 20 {lab=Vout}
N -460 30 -460 70 {lab=GND}
N -30 110 -30 140 {lab=GND}
N -30 -110 -30 -70 {lab=Vdd}
C {vsource.sym} -370 0 0 0 {name=Vin value=1.8 savecurrent=false}
C {lab_wire.sym} -370 -30 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {gnd.sym} -370 70 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} -50 -40 0 0 {name=M1
W=1.1995
L=0.15
body=Vdd
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
C {sky130_fd_pr/nfet3_01v8.sym} -50 80 0 0 {name=M2
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
C {lab_wire.sym} -200 10 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 100 20 0 0 {name=p3 sig_type=std_logic lab=Vout}
C {code_shown.sym} 420 -120 0 0 {name=sim only_toplevel=false value="
* Nested DC Sweep: Sweep Vin from 0 to 1.8, and loop Vin1 from 0.2 to 1.8 in steps of 0.2
.dc Vin 0 1.8 0.01 Vin1 0.2 1.8 0.2

.control
run

* Plot current from Vin1 against Vin (using Vin1 since that's your source name)
plot -i(Vin1) vs v(Vin)

.endc
"}
C {vsource.sym} -460 0 0 0 {name=Vin1 value=1.8 savecurrent=false}
C {gnd.sym} -460 70 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/corner.sym} 160 -60 0 0 {name=CORNER only_toplevel=false corner=tt}
C {gnd.sym} -30 140 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -460 -30 0 0 {name=p4 sig_type=std_logic lab=Vdd}
C {lab_wire.sym} -30 -110 0 0 {name=p5 sig_type=std_logic lab=Vdd}
