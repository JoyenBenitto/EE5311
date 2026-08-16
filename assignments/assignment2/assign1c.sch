v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -530 120 -530 160 {lab=GND}
N -190 80 -190 140 {lab=Vout}
N -360 100 -260 100 {lab=Vin}
N -260 50 -260 100 {lab=Vin}
N -260 50 -230 50 {lab=Vin}
N -260 170 -230 170 {lab=Vin}
N -260 100 -260 170 {lab=Vin}
N -190 110 -60 110 {lab=Vout}
N -620 120 -620 160 {lab=GND}
N -620 30 -620 60 {lab=VDD}
N -190 -10 -190 20 {lab=VDD}
N -190 200 -190 230 {lab=GND}
C {vsource.sym} -530 90 0 0 {name=Vin value=1.8 savecurrent=false}
C {lab_wire.sym} -530 60 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {gnd.sym} -530 160 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} -210 50 0 0 {name=M1
W=11.99958
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
C {sky130_fd_pr/nfet3_01v8.sym} -210 170 0 0 {name=M2
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
C {lab_wire.sym} -360 100 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {lab_wire.sym} -60 110 0 0 {name=p3 sig_type=std_logic lab=Vout}
C {code_shown.sym} 260 -30 0 0 {name=sim only_toplevel=false value="
.control
let vds = 0.2
let index = 1
let N = 10
let imax = vector(N)
let vdscache = vector(N)

while index le N
	alter Vin1 $&vds
	dc Vin 0 $&vds 0.01
	
	let imax[index - 1] = abs(vecmin(dc\{$&index\}.i(Vin1)))
	let vdscache[index - 1] = vds 
	print vds abs(vecmin(dc\{$&index\}.i(Vin1)))
	let vds = vds + 0.2
	let index = index + 1
end

* Plot all VTC curves together (now they will correctly scale from 0.2V up to 1.8V!)
plot dc1.v(Vout) dc2.v(Vout) dc3.v(Vout) dc4.v(Vout) dc5.v(Vout) dc6.v(Vout) dc7.v(Vout) dc8.v(Vout) dc9.v(Vout) dc10.v(Vout)

* Plot all IDS curves together
plot dc1.i(Vin1) dc2.i(Vin1) dc3.i(Vin1) dc4.i(Vin1) dc5.i(Vin1) dc6.i(Vin1) dc7.i(Vin1) dc8.i(Vin1) dc9.i(Vin1) dc10.i(Vin1)
.endc
"}
C {vsource.sym} -620 90 0 0 {name=Vin1 value=1.8 savecurrent=false}
C {gnd.sym} -620 160 0 0 {name=l2 lab=GND}
C {vdd.sym} -620 30 0 0 {name=l3 lab=VDD}
C {vdd.sym} -190 -10 0 0 {name=l4 lab=VDD}
C {sky130_fd_pr/corner.sym} 0 30 0 0 {name=CORNER only_toplevel=false corner=tt}
C {gnd.sym} -190 230 0 0 {name=l5 lab=GND}
