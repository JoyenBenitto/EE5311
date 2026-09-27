v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 120 10 150 10 {lab=gnd}
N 150 10 150 20 {lab=gnd}
N 120 -30 140 -30 {lab=VDD}
N 140 -90 140 -30 {lab=VDD}
N -690 -140 -690 -30 {lab=VDD}
N -690 30 -690 140 {lab=gnd}
N 120 -10 180 -10 {lab=cout}
N -220 -30 -180 -30 {lab=a}
N -220 -10 -180 -10 {lab=b}
N -220 10 -180 10 {lab=c}
N -500 -80 -500 40 {lab=b}
N -590 -80 -590 -30 {lab=a}
N -390 -80 -390 -30 {lab=c}
N -690 140 -390 140 {lab=gnd}
N -390 30 -390 140 {lab=gnd}
N -500 100 -500 140 {lab=gnd}
N -590 30 -590 140 {lab=gnd}
C {carry.sym} -30 -10 0 0 {name=x1}
C {code_shown.sym} 360 -370 0 0 {name=sim only_toplevel=false value="
.control
alter @va[pulse] = [ 0 1.8 10p 5p 5p]
alter @va1[pulse] = [ 1.8 0 10p 5p 5p]
alter @va2[pulse] = [ 0 1.8 10p 5p 5p]

tran 1p 400p

plot v(a) v(b) v(c) v(cout)
.endc
"}
C {sky130_fd_pr/corner.sym} 490 10 0 0 {name=CORNER only_toplevel=false corner=tt}
C {gnd.sym} 150 20 0 0 {name=l3 lab=gnd}
C {vdd.sym} 140 -90 0 0 {name=l4 lab=VDD}
C {vdd.sym} -690 -140 0 0 {name=l9 lab=VDD}
C {gnd.sym} -690 140 0 0 {name=l10 lab=gnd}
C {vsource.sym} -690 0 0 0 {name=vdd value=1.8 savecurrent=false}
C {vsource.sym} -590 0 0 0 {name=va value=1.8 savecurrent=false}
C {lab_wire.sym} -590 -80 0 0 {name=p1 sig_type=std_logic lab=a}
C {lab_wire.sym} -220 -30 0 0 {name=p2 sig_type=std_logic lab=a}
C {vsource.sym} -500 70 0 0 {name=va1 value=1.8 savecurrent=false}
C {vsource.sym} -390 0 0 0 {name=va2 value=1.8 savecurrent=false}
C {lab_wire.sym} -500 -80 0 0 {name=p3 sig_type=std_logic lab=b}
C {lab_wire.sym} -390 -80 0 0 {name=p4 sig_type=std_logic lab=c}
C {lab_wire.sym} -220 -10 0 0 {name=p5 sig_type=std_logic lab=b}
C {lab_wire.sym} -220 10 0 0 {name=p6 sig_type=std_logic lab=c}
C {lab_wire.sym} 180 -10 0 0 {name=p7 sig_type=std_logic lab=cout}
