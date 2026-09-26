v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -570 -200 -550 -200 {lab=a}
N -570 -200 -570 -60 {lab=a}
N -570 -60 -200 -60 {lab=a}
N -580 -180 -550 -180 {lab=b}
N -580 -180 -580 -40 {lab=b}
N -580 -40 -200 -40 {lab=b}
N -250 -180 -240 -180 {lab=#net1}
N -240 -180 -240 -20 {lab=#net1}
N -240 -20 -200 -20 {lab=#net1}
N -550 -160 -550 -0 {lab=cin}
N -550 0 -200 -0 {lab=cin}
N 100 -60 120 -60 {lab=VDD}
N 120 -80 120 -60 {lab=VDD}
N -250 -200 -220 -200 {lab=VDD}
N -220 -220 -220 -200 {lab=VDD}
N -250 -160 -220 -160 {lab=gnd}
N -220 -160 -220 -140 {lab=gnd}
N 100 -20 120 -20 {lab=gnd}
N 120 -20 120 20 {lab=gnd}
N 220 -200 240 -200 {lab=#net2}
N 220 -200 220 -60 {lab=#net2}
N 220 -60 590 -60 {lab=#net2}
N 210 -180 240 -180 {lab=#net3}
N 210 -180 210 -40 {lab=#net3}
N 210 -40 590 -40 {lab=#net3}
N 540 -180 550 -180 {lab=#net4}
N 550 -180 550 -20 {lab=#net4}
N 550 -20 590 -20 {lab=#net4}
N 240 -160 240 0 {lab=#net1}
N 240 0 590 0 {lab=#net1}
N 890 -60 910 -60 {lab=VDD}
N 910 -80 910 -60 {lab=VDD}
N 540 -200 570 -200 {lab=VDD}
N 570 -220 570 -200 {lab=VDD}
N 540 -160 570 -160 {lab=gnd}
N 570 -160 570 -140 {lab=gnd}
N 890 -20 910 -20 {lab=gnd}
N 910 -20 910 20 {lab=gnd}
N 80 -450 80 -200 {lab=#net2}
N 80 -200 240 -200 {lab=#net2}
N 190 -450 190 -180 {lab=#net3}
N 190 -180 210 -180 {lab=#net3}
N -720 -250 -570 -250 {lab=a}
N -570 -250 -570 -200 {lab=a}
N -720 -220 -580 -220 {lab=b}
N -580 -220 -580 -180 {lab=b}
N -720 -190 -640 -190 {lab=cin}
N -640 -190 -640 -130 {lab=cin}
N -640 -130 -550 -130 {lab=cin}
N -250 -180 240 -170 {lab=#net1}
N 240 -170 240 -160 {lab=#net1}
N 100 -40 130 -40 {lab=s0}
N 890 -40 930 -40 {lab=s1}
N -1640 -300 -1640 -190 {lab=VDD}
N -1640 -130 -1640 -20 {lab=gnd}
N -1450 -240 -1450 -120 {lab=b}
N -1540 -240 -1540 -190 {lab=a}
N -1340 -240 -1340 -190 {lab=cin}
N -1640 -20 -1340 -20 {lab=gnd}
N -1340 -130 -1340 -20 {lab=gnd}
N -1450 -60 -1450 -20 {lab=gnd}
N -1540 -130 -1540 -20 {lab=gnd}
N -1260 -240 -1260 -190 {lab=a1}
N -1260 -130 -1260 -20 {lab=gnd}
N -1180 -240 -1180 -190 {lab=b1}
N -1180 -130 -1180 -20 {lab=gnd}
N -1340 -20 -1180 -20 {lab=gnd}
N 20 -500 80 -500 {lab=#net2}
N 80 -500 80 -450 {lab=#net2}
N 20 -600 190 -600 {lab=#net3}
N 190 -600 190 -450 {lab=#net3}
N -380 -520 -280 -520 {lab=b1}
N -380 -620 -280 -620 {lab=a1}
N 20 -620 40 -620 {lab=VDD}
N 40 -640 40 -620 {lab=VDD}
N 20 -580 40 -580 {lab=gnd}
N 40 -580 40 -560 {lab=gnd}
N 20 -520 100 -520 {lab=VDD}
N 100 -540 100 -520 {lab=VDD}
N 20 -480 40 -480 {lab=gnd}
N 40 -480 40 -460 {lab=gnd}
C {sum.sym} -50 -30 0 0 {name=x1}
C {carry.sym} -400 -180 0 0 {name=x2}
C {vdd.sym} 120 -80 0 0 {name=l1 lab=VDD}
C {vdd.sym} -220 -220 0 0 {name=l2 lab=VDD}
C {gnd.sym} -220 -140 0 0 {name=l3 lab=gnd}
C {gnd.sym} 120 20 0 0 {name=l4 lab=gnd}
C {sum.sym} 740 -30 0 0 {name=x3}
C {carry.sym} 390 -180 0 0 {name=x4}
C {vdd.sym} 910 -80 0 0 {name=l5 lab=VDD}
C {vdd.sym} 570 -220 0 0 {name=l6 lab=VDD}
C {gnd.sym} 570 -140 0 0 {name=l7 lab=gnd}
C {gnd.sym} 910 20 0 0 {name=l8 lab=gnd}
C {lab_wire.sym} -380 -620 0 0 {name=p1 sig_type=std_logic lab=a1}
C {lab_wire.sym} -380 -520 0 0 {name=p2 sig_type=std_logic lab=b1}
C {lab_wire.sym} -720 -250 0 0 {name=p3 sig_type=std_logic lab=a}
C {lab_wire.sym} -720 -220 0 0 {name=p4 sig_type=std_logic lab=b}
C {lab_wire.sym} -720 -190 0 0 {name=p5 sig_type=std_logic lab=cin}
C {vdd.sym} -1640 -300 0 0 {name=l9 lab=VDD}
C {gnd.sym} -1640 -20 0 0 {name=l10 lab=gnd}
C {vsource.sym} -1640 -160 0 0 {name=vdd value=1.8 savecurrent=false}
C {vsource.sym} -1540 -160 0 0 {name=va value=1.8 savecurrent=false}
C {lab_wire.sym} -1540 -240 0 0 {name=p6 sig_type=std_logic lab=a}
C {vsource.sym} -1450 -90 0 0 {name=va1 value=1.8 savecurrent=false}
C {vsource.sym} -1340 -160 0 0 {name=va2 value=1.8 savecurrent=false}
C {lab_wire.sym} -1450 -240 0 0 {name=p7 sig_type=std_logic lab=b}
C {lab_wire.sym} -1340 -240 0 0 {name=p8 sig_type=std_logic lab=cin}
C {code_shown.sym} 1080 -660 0 0 {name=sim only_toplevel=false value="
.control
alter @va[pulse] = [ 1.8 0 10p 5p 5p ]
alter @va1[pulse] = [ 1.8 0 10p 5p 5p ]
alter @va2[pulse] = [ 0 1.8 10p 5p 5p ]
alter @va3[pulse] = [ 1.8 0 10p 5p 5p ]
alter @va4[pulse] = [ 1.8 0 10p 5p 5p ]

tran 1p 400p
meas tran delay_cin_net1 TRIG v(cin) VAL=0.9 RISE=1 TARG v(net1) VAL=0.9 FALL=1
meas tran delay_cin_s0 TRIG v(cin) VAL=0.9 RISE=1 TARG v(s0) VAL=0.9 CROSS=1
plot v(a) v(b) v(cin) v(s0)
.endc
"}
C {sky130_fd_pr/corner.sym} 1210 -280 0 0 {name=CORNER only_toplevel=false corner=tt}
C {vsource.sym} -1260 -160 0 0 {name=va3 value=1.8 savecurrent=false}
C {lab_wire.sym} -1260 -240 0 0 {name=p9 sig_type=std_logic lab=a1}
C {vsource.sym} -1180 -160 0 0 {name=va4 value=1.8 savecurrent=false}
C {lab_wire.sym} -1180 -240 0 0 {name=p10 sig_type=std_logic lab=b1}
C {lab_wire.sym} 130 -40 0 0 {name=p11 sig_type=std_logic lab=s0}
C {lab_wire.sym} 930 -40 0 0 {name=p12 sig_type=std_logic lab=s1}
C {inv.sym} -130 -600 0 0 {name=x5}
C {inv.sym} -130 -500 0 0 {name=x6}
C {vdd.sym} 40 -640 0 0 {name=l11 lab=VDD}
C {gnd.sym} 40 -560 0 0 {name=l12 lab=gnd}
C {vdd.sym} 100 -540 0 0 {name=l13 lab=VDD}
C {gnd.sym} 40 -460 0 0 {name=l14 lab=gnd}
