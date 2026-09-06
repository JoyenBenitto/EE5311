v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -570 130 -570 190 {lab=VDD}
N -570 250 -570 310 {lab=GND}
N -460 270 -460 310 {lab=GND}
N -460 150 -460 210 {lab=vin}
N -120 60 50 60 {lab=vin}
N 0 80 50 80 {lab=VDD}
N -0 -80 -0 80 {lab=VDD}
N -0 100 50 100 {lab=VDD}
N -0 80 -0 100 {lab=VDD}
N 350 60 400 60 {lab=VDD}
N 400 -20 400 60 {lab=VDD}
N 0 -20 400 -20 {lab=VDD}
N 350 100 360 100 {lab=GND}
N 360 100 360 160 {lab=GND}
N 350 80 480 80 {lab=out}
C {nand_tb.sym} 200 80 0 0 {name=x1}
C {vsource.sym} -570 220 0 0 {name=V3 value=1.8 savecurrent=false}
C {vdd.sym} -570 130 0 0 {name=l1 lab=VDD}
C {gnd.sym} -570 310 0 0 {name=l2 lab=GND}
C {vsource.sym} -460 240 0 0 {name=V4 value="PULSE 0 1.8 50p 5p 5p 400p 1n" savecurrent=false}
C {gnd.sym} -460 310 0 0 {name=l6 lab=GND}
C {lab_wire.sym} -460 150 0 0 {name=p2 sig_type=std_logic lab=vin}
C {lab_wire.sym} -120 60 0 0 {name=p1 sig_type=std_logic lab=vin}
C {vdd.sym} 0 -80 0 0 {name=l3 lab=VDD}
C {gnd.sym} 360 160 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/corner.sym} 610 -70 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 580 140 0 0 {name=sim only_toplevel=false value="
.incldue nand_tb_extracted.spice
.control
tran 0.1p 1n
meas tran tphl trig v(vin) val=0.9 rise=1 targ v(out) val=0.9 fall=1
meas tran tplh trig v(vin) val=0.9 fall=1 targ v(out) val=0.9 rise=1
let tpd = (tphl + tplh) / 2
print tpd

plot v(out) v(vin)
.endc
"}
C {lab_wire.sym} 480 80 0 0 {name=p3 sig_type=std_logic lab=out}
