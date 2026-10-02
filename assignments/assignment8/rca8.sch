v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -450 220 -430 220 {lab=a0}
N -450 220 -450 360 {lab=a0}
N -450 360 -80 360 {lab=a0}
N -460 240 -430 240 {lab=b0}
N -460 240 -460 380 {lab=b0}
N -460 380 -80 380 {lab=b0}
N -130 240 -120 240 {lab=cout0}
N -120 240 -120 400 {lab=cout0}
N -120 400 -80 400 {lab=cout0}
N -430 260 -430 420 {lab=#net1}
N -430 420 -80 420 {lab=#net1}
N -130 220 -100 220 {lab=VDD}
N -100 200 -100 220 {lab=VDD}
N -130 260 -100 260 {lab=GND}
N -100 260 -100 280 {lab=GND}
N 340 220 360 220 {lab=a1}
N 340 220 340 360 {lab=a1}
N 340 360 710 360 {lab=a1}
N 330 240 360 240 {lab=b1}
N 330 240 330 380 {lab=b1}
N 330 380 710 380 {lab=b1}
N 660 240 670 240 {lab=#net2}
N 670 240 670 400 {lab=#net2}
N 670 400 710 400 {lab=#net2}
N 360 260 360 420 {lab=cout0}
N 360 420 710 420 {lab=cout0}
N 200 -30 200 220 {lab=a1}
N 200 220 360 220 {lab=a1}
N 310 -30 310 240 {lab=b1}
N 310 240 330 240 {lab=b1}
N -600 170 -450 170 {lab=a0}
N -450 170 -450 220 {lab=a0}
N -600 200 -460 200 {lab=b0}
N -460 200 -460 240 {lab=b0}
N -600 230 -520 230 {lab=#net1}
N -520 230 -520 290 {lab=#net1}
N -520 290 -430 290 {lab=#net1}
N 200 -80 200 -30 {lab=a1}
N 310 -180 310 -30 {lab=b1}
N -260 -100 200 -100 {lab=a1}
N 200 -100 200 -80 {lab=a1}
N -260 -200 310 -200 {lab=b1}
N 310 -200 310 -180 {lab=b1}
N -130 240 280 240 {lab=cout0}
N 280 240 280 260 {lab=cout0}
N 280 260 360 260 {lab=cout0}
N -100 160 -100 200 {lab=VDD}
N 220 380 260 380 {lab=sum0}
N 260 380 260 620 {lab=sum0}
N 300 260 300 620 {lab=cout0}
C {sum.sym} 70 390 0 0 {name=x5}
C {carry.sym} -280 240 0 0 {name=x6}
C {sum.sym} 860 390 0 0 {name=x7}
C {carry.sym} 510 240 0 0 {name=x8}
C {lab_wire.sym} -260 -100 0 0 {name=p6 sig_type=std_logic lab=a1}
C {lab_wire.sym} -260 -200 0 0 {name=p7 sig_type=std_logic lab=b1}
C {iopin.sym} -100 280 1 0 {name=p1 lab=GND}
C {iopin.sym} -100 160 3 0 {name=p2 lab=VDD}
C {iopin.sym} 220 400 1 0 {name=p3 lab=GND}
C {iopin.sym} 1010 400 1 0 {name=p4 lab=GND}
C {iopin.sym} 660 260 1 0 {name=p5 lab=GND}
C {iopin.sym} 220 360 3 0 {name=p11 lab=VDD}
C {iopin.sym} 660 220 3 0 {name=p12 lab=VDD}
C {ipin.sym} -600 170 0 0 {name=p13 lab=a0}
C {opin.sym} 260 620 1 0 {name=p14 lab=sum0}
C {iopin.sym} 1010 360 3 0 {name=p15 lab=VDD}
C {ipin.sym} -600 200 0 0 {name=p16 lab=b0}
C {ipin.sym} -600 230 0 0 {name=p17 lab=cin0}
C {opin.sym} 300 620 1 0 {name=p18 lab=cout0}
