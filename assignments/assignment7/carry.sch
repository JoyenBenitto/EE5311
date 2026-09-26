v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -90 -30 -10 -30 {lab=VDD}
N -10 -120 -10 -30 {lab=VDD}
N -10 -30 120 -30 {lab=VDD}
N -90 30 120 30 {lab=#net1}
N -320 0 -130 0 {lab=a}
N 0 30 -0 160 {lab=#net1}
N -320 120 80 120 {lab=b}
N 80 0 80 120 {lab=b}
N -320 190 -40 190 {lab=cin}
N -90 -0 -10 0 {lab=VDD}
N -10 -30 -10 0 {lab=VDD}
N 120 -0 160 -0 {lab=VDD}
N 160 -30 160 -0 {lab=VDD}
N 120 -30 160 -30 {lab=VDD}
N -0 190 230 190 {lab=VDD}
N 230 -30 230 190 {lab=VDD}
N 160 -30 230 -30 {lab=VDD}
N 230 -30 450 -30 {lab=VDD}
N 450 -0 520 -0 {lab=VDD}
N 520 -30 520 -0 {lab=VDD}
N 450 -30 520 -30 {lab=VDD}
N 450 30 450 90 {lab=#net2}
N 80 120 410 120 {lab=b}
N 410 -0 410 70 {lab=a}
N -210 70 410 70 {lab=a}
N -210 0 -210 70 {lab=a}
N -0 220 -0 280 {lab=cout}
N 0 260 620 260 {lab=cout}
N -220 310 -40 310 {lab=cin}
N -220 190 -220 310 {lab=cin}
N -90 420 120 420 {lab=#net3}
N -90 480 120 480 {lab=GND}
N -0 340 -0 420 {lab=#net3}
N 450 150 450 260 {lab=cout}
N 440 370 440 420 {lab=#net4}
N 120 480 440 480 {lab=GND}
N 280 480 280 690 {lab=GND}
N 440 260 440 310 {lab=cout}
N 440 340 580 340 {lab=GND}
N 580 340 580 630 {lab=GND}
N 280 630 580 630 {lab=GND}
N 440 450 580 450 {lab=GND}
N -190 450 -130 450 {lab=a}
N -190 -0 -190 450 {lab=a}
N -70 450 80 450 {lab=b}
N -70 120 -70 450 {lab=b}
N 280 450 400 450 {lab=b}
N 280 120 280 450 {lab=b}
N 340 340 400 340 {lab=a}
N 330 50 340 340 {lab=a}
N -170 50 330 50 {lab=a}
N -170 0 -170 50 {lab=a}
N 120 450 230 450 {lab=GND}
N 230 450 230 540 {lab=GND}
N 230 540 280 540 {lab=GND}
N -90 450 -80 450 {lab=GND}
N -80 450 -80 620 {lab=GND}
N -80 620 280 620 {lab=GND}
N -0 310 220 310 {lab=GND}
N 220 310 220 450 {lab=GND}
N 450 120 590 120 {lab=VDD}
N 590 -30 590 120 {lab=VDD}
N 520 -30 590 -30 {lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} -20 310 0 0 {name=M1
W=0.84
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 100 0 0 0 {name=M2
W=1.68
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {opin.sym} 620 260 0 0 {name=p1 lab=cout}
C {ipin.sym} -320 0 0 0 {name=p2 lab=a}
C {iopin.sym} -10 -120 3 0 {name=p3 lab=VDD}
C {iopin.sym} 280 690 1 0 {name=p4 lab=GND}
C {ipin.sym} -320 120 0 0 {name=p6 lab=b}
C {ipin.sym} -320 190 0 0 {name=p7 lab=cin}
C {sky130_fd_pr/nfet_01v8.sym} -110 450 0 0 {name=M3
W=0.84
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -20 190 0 0 {name=M4
W=1.68
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -110 0 0 0 {name=M5
W=1.68
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 430 0 0 0 {name=M6
W=1.68
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 430 120 0 0 {name=M7
W=1.68
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 100 450 0 0 {name=M8
W=0.84
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 420 340 0 0 {name=M9
W=0.84
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 420 450 0 0 {name=M10
W=0.84
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
