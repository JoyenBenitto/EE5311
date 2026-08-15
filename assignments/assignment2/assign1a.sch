v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -110 30 -110 70 {lab=0}
N 230 -10 230 50 {lab=Vout}
N 60 10 160 10 {lab=Vin}
N 160 -40 160 10 {lab=Vin}
N 160 -40 190 -40 {lab=Vin}
N 160 80 190 80 {lab=Vin}
N 160 10 160 80 {lab=Vin}
N 230 20 360 20 {lab=Vout}
C {vsource.sym} -110 0 0 0 {name=Vin value=1.8 savecurrent=false}
C {lab_wire.sym} -110 -30 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {gnd.sym} -110 70 0 0 {name=l1 lab=0}
C {sky130_fd_pr/pfet3_01v8.sym} 210 -40 0 0 {name=M1
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
C {sky130_fd_pr/nfet3_01v8.sym} 210 80 0 0 {name=M2
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
C {lab_wire.sym} 60 10 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 360 20 0 0 {name=p3 sig_type=std_logic lab=Vout}
C {code_shown.sym} 380 -120 0 0 {name=sim only_toplevel=false value="
.include sim1a.cir
"}
