v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -270 200 -240 200 {lab=a0}
N -270 220 -240 220 {lab=b0}
N -270 240 -240 240 {lab=cin0}
N 60 260 100 260 {lab=sout0}
N 100 260 100 320 {lab=sout0}
N 60 200 100 200 {lab=VDD}
N 100 180 100 200 {lab=VDD}
N 60 220 140 220 {lab=GND}
N 140 180 140 220 {lab=GND}
N 310 200 340 200 {lab=a1}
N 310 220 340 220 {lab=b1}
N 640 260 680 260 {lab=sout1}
N 680 260 680 320 {lab=sout1}
N 640 200 680 200 {lab=VDD}
N 680 180 680 200 {lab=VDD}
N 640 220 720 220 {lab=GND}
N 720 180 720 220 {lab=GND}
N 60 240 340 240 {lab=#net1}
N 890 200 920 200 {lab=a2}
N 890 220 920 220 {lab=b2}
N 1220 260 1260 260 {lab=sout2}
N 1260 260 1260 320 {lab=sout2}
N 1220 200 1260 200 {lab=VDD}
N 1260 180 1260 200 {lab=VDD}
N 1220 220 1300 220 {lab=GND}
N 1300 180 1300 220 {lab=GND}
N 640 240 920 240 {lab=#net2}
N 1470 200 1500 200 {lab=a3}
N 1470 220 1500 220 {lab=b3}
N 1800 260 1840 260 {lab=sout3}
N 1840 260 1840 320 {lab=sout3}
N 1800 200 1840 200 {lab=VDD}
N 1840 180 1840 200 {lab=VDD}
N 1800 220 1880 220 {lab=GND}
N 1880 180 1880 220 {lab=GND}
N 1220 240 1500 240 {lab=#net3}
N 2050 200 2080 200 {lab=a4}
N 2050 220 2080 220 {lab=b4}
N 2380 260 2420 260 {lab=sout4}
N 2420 260 2420 320 {lab=sout4}
N 2380 200 2420 200 {lab=VDD}
N 2420 180 2420 200 {lab=VDD}
N 2380 220 2460 220 {lab=GND}
N 2460 180 2460 220 {lab=GND}
N 1800 240 2080 240 {lab=#net4}
N 2590 200 2620 200 {lab=a5}
N 2590 220 2620 220 {lab=b5}
N 2920 260 2960 260 {lab=sout5}
N 2960 260 2960 320 {lab=sout5}
N 2920 200 2960 200 {lab=VDD}
N 2960 180 2960 200 {lab=VDD}
N 2920 220 3000 220 {lab=GND}
N 3000 180 3000 220 {lab=GND}
N 3170 200 3200 200 {lab=a6}
N 3170 220 3200 220 {lab=b6}
N 3500 260 3540 260 {lab=sout6}
N 3540 260 3540 320 {lab=sout6}
N 3500 200 3540 200 {lab=VDD}
N 3540 180 3540 200 {lab=VDD}
N 3500 220 3580 220 {lab=GND}
N 3580 180 3580 220 {lab=GND}
N 2920 240 3200 240 {lab=#net5}
N 3750 200 3780 200 {lab=a7}
N 3750 220 3780 220 {lab=b7}
N 4080 260 4120 260 {lab=sum7}
N 4120 260 4120 320 {lab=sum7}
N 4080 200 4120 200 {lab=VDD}
N 4120 180 4120 200 {lab=VDD}
N 4080 220 4160 220 {lab=GND}
N 4160 180 4160 220 {lab=GND}
N 3500 240 3780 240 {lab=#net6}
N 2380 240 2620 240 {lab=#net7}
N 4180 240 4180 320 {lab=cout7}
N 4080 240 4180 240 {lab=cout7}
C {ipin.sym} -270 200 0 0 {name=p13 lab=a0}
C {ipin.sym} -270 220 0 0 {name=p16 lab=b0}
C {ipin.sym} -270 240 0 0 {name=p1 lab=cin0}
C {rca1.sym} -90 230 0 0 {name=x1}
C {opin.sym} 100 320 1 0 {name=p14 lab=sout0}
C {iopin.sym} 100 180 3 0 {name=p2 lab=VDD}
C {iopin.sym} 140 180 3 0 {name=p3 lab=GND}
C {ipin.sym} 310 200 0 0 {name=p4 lab=a1}
C {ipin.sym} 310 220 0 0 {name=p5 lab=b1}
C {rca1.sym} 490 230 0 0 {name=x2}
C {opin.sym} 680 320 1 0 {name=p7 lab=sout1}
C {iopin.sym} 680 180 3 0 {name=p8 lab=VDD}
C {iopin.sym} 720 180 3 0 {name=p9 lab=GND}
C {ipin.sym} 890 200 0 0 {name=p6 lab=a2}
C {ipin.sym} 890 220 0 0 {name=p10 lab=b2}
C {rca1.sym} 1070 230 0 0 {name=x3}
C {opin.sym} 1260 320 1 0 {name=p11 lab=sout2}
C {iopin.sym} 1260 180 3 0 {name=p12 lab=VDD}
C {iopin.sym} 1300 180 3 0 {name=p15 lab=GND}
C {ipin.sym} 1470 200 0 0 {name=p17 lab=a3}
C {ipin.sym} 1470 220 0 0 {name=p18 lab=b3}
C {rca1.sym} 1650 230 0 0 {name=x4
lab=a3}
C {opin.sym} 1840 320 1 0 {name=p19 lab=sout3}
C {iopin.sym} 1840 180 3 0 {name=p20 lab=VDD}
C {iopin.sym} 1880 180 3 0 {name=p21 lab=GND}
C {ipin.sym} 2050 200 0 0 {name=p22 lab=a4}
C {ipin.sym} 2050 220 0 0 {name=p23 lab=b4}
C {rca1.sym} 2230 230 0 0 {name=x5
lab=a3}
C {opin.sym} 2420 320 1 0 {name=p24 lab=sout4}
C {iopin.sym} 2420 180 3 0 {name=p25 lab=VDD}
C {iopin.sym} 2460 180 3 0 {name=p26 lab=GND}
C {ipin.sym} 2590 200 0 0 {name=p27 lab=a5}
C {ipin.sym} 2590 220 0 0 {name=p28 lab=b5}
C {rca1.sym} 2770 230 0 0 {name=x6}
C {opin.sym} 2960 320 1 0 {name=p29 lab=sout5}
C {iopin.sym} 2960 180 3 0 {name=p30 lab=VDD}
C {iopin.sym} 3000 180 3 0 {name=p31 lab=GND}
C {ipin.sym} 3170 200 0 0 {name=p32 lab=a6}
C {ipin.sym} 3170 220 0 0 {name=p33 lab=b6}
C {rca1.sym} 3350 230 0 0 {name=x7
lab=a3}
C {opin.sym} 3540 320 1 0 {name=p34 lab=sout6}
C {iopin.sym} 3540 180 3 0 {name=p35 lab=VDD}
C {iopin.sym} 3580 180 3 0 {name=p36 lab=GND}
C {ipin.sym} 3750 200 0 0 {name=p37 lab=a7}
C {ipin.sym} 3750 220 0 0 {name=p38 lab=b7}
C {rca1.sym} 3930 230 0 0 {name=x8
lab=a3}
C {opin.sym} 4120 320 1 0 {name=p39 lab=sout7}
C {iopin.sym} 4120 180 3 0 {name=p40 lab=VDD}
C {iopin.sym} 4160 180 3 0 {name=p41 lab=GND}
C {opin.sym} 4180 320 1 0 {name=p42 lab=cout7}
