v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 240 60 300 60 {lab=vout1}
N 140 120 140 140 {lab=DGND}
N 140 140 200 140 {lab=DGND}
N 200 140 400 140 {lab=DGND}
N 400 120 400 140 {lab=DGND}
N 280 60 280 190 {lab=vout1}
N 10 60 40 60 {lab=in}
N 500 60 540 60 {lab=out}
N 140 -60 140 -10 {lab=DVDD}
N 140 -60 250 -60 {lab=DVDD}
N 400 -60 400 -10 {lab=DVDD}
N 250 -60 400 -60 {lab=DVDD}
C {inv.sym} 180 60 0 0 {name=x1}
C {inv.sym} 440 60 0 0 {name=x2}
C {iopin.sym} 200 140 1 0 {name=p2 lab=DGND}
C {ipin.sym} 10 60 0 0 {name=p3 lab=in}
C {opin.sym} 540 60 0 0 {name=p4 lab=out}
C {iopin.sym} 250 -60 3 0 {name=p6 lab=DVDD}
C {opin.sym} 280 190 1 0 {name=p1 lab=vout1}
