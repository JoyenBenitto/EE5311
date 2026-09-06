v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -530 -60 -530 -0 {lab=VDD}
N -530 60 -530 120 {lab=GND}
N 10 -290 120 -290 {lab=VDD}
N 120 -290 120 -90 {lab=VDD}
N 120 -90 180 -90 {lab=VDD}
N 20 -80 120 -80 {lab=GND}
N 120 -80 120 10 {lab=GND}
N 20 -100 170 -100 {lab=#net1}
N 170 -110 170 -100 {lab=#net1}
N 170 -110 180 -110 {lab=#net1}
N 20 -290 20 -120 {lab=VDD}
N 480 -110 510 -110 {lab=VDD}
N 510 -290 510 -110 {lab=VDD}
N 120 -290 510 -290 {lab=VDD}
N 480 -70 510 -70 {lab=GND}
N 510 -70 510 -10 {lab=GND}
N 120 -10 510 -10 {lab=GND}
N -360 -100 -280 -100 {lab=VDD}
N -360 -240 -360 -100 {lab=VDD}
N -360 -240 20 -240 {lab=VDD}
N -420 80 -420 120 {lab=GND}
N -420 -40 -420 20 {lab=vin}
N -420 -120 -280 -120 {lab=vin}
C {nand.sym} -130 -100 0 0 {name=x1}
C {nand.sym} 330 -90 0 0 {name=x2}
C {vdd.sym} 10 -290 0 0 {name=l1 lab=VDD}
C {vsource.sym} -530 30 0 0 {name=V2 value=1.8 savecurrent=false}
C {vdd.sym} -530 -60 0 0 {name=l3 lab=VDD}
C {gnd.sym} -530 120 0 0 {name=l4 lab=GND}
C {gnd.sym} 120 10 0 0 {name=l2 lab=GND}
C {vsource.sym} -420 50 0 0 {name=V1 value="PULSE 0 1.8 50p 5p 5p 400p 1n" savecurrent=false}
C {gnd.sym} -420 120 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -420 -40 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_wire.sym} -420 -120 0 0 {name=p2 sig_type=std_logic lab=vin}
C {sky130_fd_pr/corner.sym} 790 -500 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 760 -290 0 0 {name=sim only_toplevel=false value="
.control
tran 0.1p 1n
meas tran tphl trig v(vin) val=0.9 rise=1 targ v(net1) val=0.9 fall=1
meas tran tplh trig v(vin) val=0.9 fall=1 targ v(net1) val=0.9 rise=1
let tpd = (tphl + tplh) / 2
print tpd

plot v(net1) vin
.endc
"}
