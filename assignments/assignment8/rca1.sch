v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -320 -30 -300 -30 {lab=a}
N -320 -30 -320 110 {lab=a}
N -320 110 50 110 {lab=a}
N -330 -10 -300 -10 {lab=b}
N -330 -10 -330 130 {lab=b}
N -330 130 50 130 {lab=b}
N 0 -10 10 -10 {lab=cout}
N 10 -10 10 150 {lab=cout}
N 10 150 50 150 {lab=cout}
N -300 10 -300 170 {lab=cin}
N -300 170 50 170 {lab=cin}
N 0 -30 30 -30 {lab=VDD}
N 30 -50 30 -30 {lab=VDD}
N -470 -80 -320 -80 {lab=a}
N -320 -80 -320 -30 {lab=a}
N -470 -50 -330 -50 {lab=b}
N -330 -50 -330 -10 {lab=b}
N -470 -20 -390 -20 {lab=cin}
N -390 -20 -390 40 {lab=cin}
N -390 40 -300 40 {lab=cin}
N 0 -10 410 -10 {lab=cout}
N 30 -90 30 -50 {lab=VDD}
N 350 130 390 130 {lab=sum}
N 390 130 390 370 {lab=sum}
N 430 10 430 370 {lab=cout}
N 410 -10 430 -10 {lab=cout}
N 430 -10 430 10 {lab=cout}
N 350 110 380 110 {lab=VDD}
N 380 -60 380 110 {lab=VDD}
N 30 -60 380 -60 {lab=VDD}
N -0 10 360 10 {lab=GND}
N 360 10 360 350 {lab=GND}
N 350 150 360 150 {lab=GND}
C {sum.sym} 200 140 0 0 {name=x5}
C {carry.sym} -150 -10 0 0 {name=x6}
C {iopin.sym} 30 -90 3 0 {name=p2 lab=VDD}
C {iopin.sym} 360 350 1 0 {name=p3 lab=GND}
C {ipin.sym} -470 -80 0 0 {name=p13 lab=a}
C {opin.sym} 390 370 1 0 {name=p14 lab=sum}
C {ipin.sym} -470 -50 0 0 {name=p16 lab=b}
C {ipin.sym} -470 -20 0 0 {name=p17 lab=cin}
C {opin.sym} 430 370 1 0 {name=p18 lab=cout}
