v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -30 -30 -0 -30 {lab=A}
N -30 -10 -0 -10 {lab=B}
N 40 -100 40 -70 {lab=DVDD}
N 40 30 40 80 {lab=DGND}
N 80 -20 120 -20 {lab=#net1}
N 210 -20 240 -20 {lab=Y}
C {ipin.sym} -30 -30 0 0 {name=p1 lab=A}
C {ipin.sym} -30 -10 0 0 {name=p2 lab=B}
C {nand2.sym} 150 0 0 0 {name=x1}
C {opin.sym} 240 -20 0 0 {name=p3 lab=Y}
C {iopin.sym} 40 -100 3 0 {name=p4 lab=DVDD}
C {iopin.sym} 40 80 1 0 {name=p5 lab=DGND}
C {inv.sym} 270 -20 0 0 {name=x2}
