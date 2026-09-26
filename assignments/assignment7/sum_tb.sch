v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -830 -200 -830 -90 {lab=VDD}
N -830 -30 -830 80 {lab=gnd}
N -640 -140 -640 -20 {lab=b}
N -730 -140 -730 -90 {lab=a}
N -530 -140 -530 -90 {lab=c}
N -830 80 -530 80 {lab=gnd}
N -530 -30 -530 80 {lab=gnd}
N -640 40 -640 80 {lab=gnd}
N -730 -30 -730 80 {lab=gnd}
N -240 -40 -140 -40 {lab=a}
N -140 -40 -140 -30 {lab=a}
N -240 -20 -140 -20 {lab=b}
N -140 -20 -140 -10 {lab=b}
N -210 10 -190 10 {lab=c}
N -190 10 -180 30 {lab=c}
N -180 30 -140 30 {lab=c}
N -150 10 -140 10 {lab=gnd}
N -150 10 -150 80 {lab=gnd}
N 160 10 210 10 {lab=gnd}
N 210 10 210 60 {lab=gnd}
N -150 60 210 60 {lab=gnd}
N 160 -30 180 -30 {lab=VDD}
N 180 -110 180 -30 {lab=VDD}
N 160 -10 220 -10 {lab=sum_bar}
C {sum.sym} 10 0 0 0 {name=x1}
C {vdd.sym} -830 -200 0 0 {name=l9 lab=VDD}
C {gnd.sym} -830 80 0 0 {name=l10 lab=gnd}
C {vsource.sym} -830 -60 0 0 {name=vdd value=1.8 savecurrent=false}
C {vsource.sym} -730 -60 0 0 {name=va value=1.8 savecurrent=false}
C {lab_wire.sym} -730 -140 0 0 {name=p1 sig_type=std_logic lab=a}
C {vsource.sym} -640 10 0 0 {name=va1 value=1.8 savecurrent=false}
C {vsource.sym} -530 -60 0 0 {name=va2 value=1.8 savecurrent=false}
C {lab_wire.sym} -640 -140 0 0 {name=p3 sig_type=std_logic lab=b}
C {lab_wire.sym} -530 -140 0 0 {name=p4 sig_type=std_logic lab=c}
C {code_shown.sym} 840 -250 0 0 {name=sim only_toplevel=false value="
.control
alter @va[pulse] = [ 1.8 0 10p 5p 5p]
alter @va1[pulse] = [ 1.8 0 10p 5p 5p]
alter @va2[pulse] = [ 1.8 0 10p 5p 5p]

tran 1p 400p

plot v(a) v(b) v(c) v(sum_bar)
.endc
"}
C {sky130_fd_pr/corner.sym} 970 130 0 0 {name=CORNER only_toplevel=false corner=tt}
C {lab_wire.sym} -240 -40 0 0 {name=p2 sig_type=std_logic lab=a}
C {lab_wire.sym} -240 -20 0 0 {name=p5 sig_type=std_logic lab=b}
C {lab_wire.sym} -210 10 0 0 {name=p6 sig_type=std_logic lab=c}
C {gnd.sym} -150 80 0 0 {name=l1 lab=gnd}
C {vdd.sym} 180 -110 0 0 {name=l2 lab=VDD}
C {lab_wire.sym} 220 -10 0 0 {name=p7 sig_type=std_logic lab=sum_bar}
