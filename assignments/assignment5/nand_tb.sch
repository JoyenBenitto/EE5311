v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 30 50 180 50 {lab=out}
N 180 40 180 50 {lab=out}
N 180 40 190 40 {lab=out}
N -470 30 -270 30 {lab=A}
N -470 60 -290 60 {lab=B}
N -290 50 -290 60 {lab=B}
N -290 50 -270 50 {lab=B}
N 30 -200 30 30 {lab=DVDD}
N 30 -200 530 -200 {lab=DVDD}
N 530 -200 530 40 {lab=DVDD}
N 490 40 530 40 {lab=DVDD}
N 70 -260 70 -200 {lab=DVDD}
N -430 150 190 150 {lab=B1}
N 190 60 190 150 {lab=B1}
N 30 70 70 70 {lab=DGND}
N 70 70 70 190 {lab=DGND}
N 490 80 550 80 {lab=DGND}
N 550 80 550 160 {lab=DGND}
N 70 160 550 160 {lab=DGND}
N 550 60 630 60 {lab=out}
N 550 -40 550 60 {lab=out}
N 110 -40 550 -40 {lab=out}
N 110 -40 110 50 {lab=out}
C {nand.sym} -120 50 0 0 {name=x1}
C {nand.sym} 340 60 0 0 {name=x2}
C {ipin.sym} -470 30 0 0 {name=p1 lab=A}
C {opin.sym} 630 60 0 0 {name=p2 lab=out}
C {iopin.sym} 70 190 1 0 {name=p3 lab=DGND}
C {iopin.sym} 70 -260 3 0 {name=p4 lab=DVDD}
C {ipin.sym} -470 60 0 0 {name=p5 lab=B}
C {ipin.sym} -430 150 0 0 {name=p6 lab=B1}
