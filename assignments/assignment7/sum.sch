v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -410 -350 -200 -350 {lab=VDD}
N -200 -350 -30 -350 {lab=VDD}
N -410 -290 -200 -290 {lab=#net1}
N -200 -290 -30 -290 {lab=#net1}
N -320 -290 -320 -160 {lab=#net1}
N -320 -100 250 -100 {lab=cout}
N 250 -180 250 -160 {lab=#net2}
N 250 -290 250 -240 {lab=#net3}
N 160 -320 210 -320 {lab=a}
N 160 -320 160 -260 {lab=a}
N -640 -260 160 -260 {lab=a}
N -640 -320 -640 -260 {lab=a}
N -640 -320 -450 -320 {lab=a}
N -330 -440 -330 -350 {lab=VDD}
N -410 -320 -270 -320 {lab=VDD}
N -270 -350 -270 -320 {lab=VDD}
N -200 -320 -140 -320 {lab=VDD}
N -140 -350 -140 -320 {lab=VDD}
N -30 -320 60 -320 {lab=VDD}
N 60 -350 60 -320 {lab=VDD}
N -30 -350 60 -350 {lab=VDD}
N 250 -320 340 -320 {lab=VDD}
N 340 -350 340 -320 {lab=VDD}
N 250 -350 340 -350 {lab=VDD}
N 60 -350 250 -350 {lab=VDD}
N 250 -210 340 -210 {lab=VDD}
N 340 -320 340 -210 {lab=VDD}
N 250 -130 340 -130 {lab=VDD}
N 340 -220 340 -130 {lab=VDD}
N -640 -200 -240 -200 {lab=b}
N -240 -320 -240 -200 {lab=b}
N -640 -130 -360 -130 {lab=coutbar}
N 170 -130 210 -130 {lab=cin}
N -240 -210 210 -210 {lab=b}
N -70 -320 -70 -170 {lab=cin}
N -70 -170 180 -170 {lab=cin}
N 180 -170 180 -130 {lab=cin}
N 250 -100 550 -100 {lab=cout}
N 550 -100 550 -90 {lab=cout}
N -320 -130 -100 -130 {lab=VDD}
N -100 -350 -100 -130 {lab=VDD}
N -320 240 -0 240 {lab=#net4}
N -320 300 -0 300 {lab=GND}
N -40 300 -40 370 {lab=GND}
N 270 210 270 240 {lab=#net5}
N 270 100 270 150 {lab=#net6}
N -290 100 -290 240 {lab=#net4}
N -290 -100 -290 40 {lab=cout}
N 270 -100 270 40 {lab=cout}
N 200 70 230 70 {lab=cin}
N 200 -130 200 70 {lab=cin}
N -470 170 230 180 {lab=b}
N -470 -200 -470 170 {lab=b}
N 150 270 230 270 {lab=a}
N 140 160 150 270 {lab=a}
N -550 150 140 160 {lab=a}
N -550 150 -540 -320 {lab=a}
N -40 10 -40 270 {lab=cin}
N -40 10 200 10 {lab=cin}
N -190 -80 -190 270 {lab=b}
N -420 -80 -190 -80 {lab=b}
N -420 -200 -420 -80 {lab=b}
N -520 270 -360 270 {lab=a}
N -520 -320 -520 270 {lab=a}
N -320 270 -230 270 {lab=GND}
N -230 270 -230 330 {lab=GND}
N -230 330 -40 330 {lab=GND}
N 270 300 270 350 {lab=GND}
N -40 350 270 350 {lab=GND}
N -150 270 -100 270 {lab=GND}
N -100 270 -100 330 {lab=GND}
N -0 270 80 270 {lab=GND}
N 80 270 80 350 {lab=GND}
N 270 70 380 70 {lab=GND}
N 380 70 380 350 {lab=GND}
N 260 350 380 350 {lab=GND}
N 270 270 380 270 {lab=GND}
N 270 180 380 180 {lab=GND}
N -290 70 -70 70 {lab=GND}
N -70 70 -70 330 {lab=GND}
N -430 70 -330 70 {lab=coutbar}
N -440 -130 -430 70 {lab=coutbar}
C {sky130_fd_pr/nfet_01v8.sym} -310 70 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -220 -320 0 0 {name=M2
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
C {opin.sym} 550 -90 0 0 {name=p1 lab=cout}
C {ipin.sym} -640 -320 0 0 {name=p2 lab=a}
C {iopin.sym} -330 -440 3 0 {name=p3 lab=VDD}
C {iopin.sym} -40 370 1 0 {name=p4 lab=GND}
C {ipin.sym} -640 -200 0 0 {name=p6 lab=b}
C {ipin.sym} -640 -130 0 0 {name=p7 lab=coutbar}
C {sky130_fd_pr/pfet_01v8.sym} -340 -130 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} -430 -320 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} -50 -320 0 0 {name=M6
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
C {sky130_fd_pr/pfet_01v8.sym} 230 -320 0 0 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} 230 -210 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 230 -130 0 0 {name=M8
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
C {ipin.sym} 170 -130 0 0 {name=p5 lab=cin}
C {sky130_fd_pr/nfet_01v8.sym} -340 270 0 0 {name=M9
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
C {sky130_fd_pr/nfet_01v8.sym} -170 270 0 0 {name=M10
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
C {sky130_fd_pr/nfet_01v8.sym} -20 270 0 0 {name=M11
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
C {sky130_fd_pr/nfet_01v8.sym} 250 70 0 0 {name=M12
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
C {sky130_fd_pr/nfet_01v8.sym} 250 180 0 0 {name=M13
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
C {sky130_fd_pr/nfet_01v8.sym} 250 270 0 0 {name=M14
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
