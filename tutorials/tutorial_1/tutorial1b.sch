v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -250 -90 -250 -60 {lab=GND}
N -250 130 -250 160 {lab=GND}
N -250 40 -250 70 {lab=VDD}
N -250 -180 -250 -150 {lab=VDD}
N 90 -30 90 20 {lab=GND}
N 90 -130 90 -90 {lab=Vdd1}
N 20 -60 50 -60 {lab=Vin}
C {vsource.sym} -250 -120 0 0 {name=Vdd1 value=1.8 savecurrent=false}
C {vsource.sym} -250 100 0 0 {name=Vin value=1.8 savecurrent=false}
C {gnd.sym} -250 -60 0 0 {name=l1 lab=GND}
C {gnd.sym} -250 160 0 0 {name=l2 lab=GND}
C {vdd.sym} -250 -180 0 0 {name=l3 lab=VDD}
C {vdd.sym} -250 40 0 0 {name=l4 lab=VDD}
C {sky130_fd_pr/nfet3_01v8.sym} 70 -60 0 0 {name=M1
W=0.42
L=0.15
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 90 20 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 20 -60 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 90 -130 0 0 {name=p2 sig_type=std_logic lab=Vdd1}
C {code_shown.sym} 260 -150 0 0 {name=sim only_toplevel=false value="
.control
let Vgs = 0.6
repeat 4
	alter Vin1 $&Vgs
	dc Vdd1 0 1.8 0.02
	let Vgs = Vgs + 0.4
end
plot dc1.I(Vdd1)*-1 dc2I(Vdd1)*-1 dc3.I(vdd1)*-1 dc4.I(Vdd1)*-1
set filetype=ascii
wrdata nmos_ids_vds.txt dc1.I(Vdd1)*-1 dc2.I(Vdd1)*-1 dc3.I(Vdd1)*-1 dc4.I(vdd1)*-1
.endc
"}
