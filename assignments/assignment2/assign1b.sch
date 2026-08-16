v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -360 -10 -360 30 {lab=GND}
N -20 -50 -20 10 {lab=Vout}
N -190 -30 -90 -30 {lab=Vin}
N -90 -80 -90 -30 {lab=Vin}
N -90 -80 -60 -80 {lab=Vin}
N -90 40 -60 40 {lab=Vin}
N -90 -30 -90 40 {lab=Vin}
N -20 -20 110 -20 {lab=Vout}
N -450 -10 -450 30 {lab=GND}
N -450 -100 -450 -70 {lab=VDD}
N -20 -140 -20 -110 {lab=VDD}
N -20 70 -20 100 {lab=GND}
C {vsource.sym} -360 -40 0 0 {name=Vin value="pulse(0 1.8 0 1ns 1ns 5ns 10ns)" savecurrent=false}
C {lab_wire.sym} -360 -70 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {gnd.sym} -360 30 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} -40 -80 0 0 {name=M1
W=11.99958
L=0.15
body=VDD
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
C {sky130_fd_pr/nfet3_01v8.sym} -40 40 0 0 {name=M2
W=0.42
L=0.15
body=GND
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
C {lab_wire.sym} -190 -30 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 110 -20 0 0 {name=p3 sig_type=std_logic lab=Vout}
C {code_shown.sym} 430 -160 0 0 {name=sim only_toplevel=false value="
* Control flag: 1 for DC Sweep / VTC, 2 for Transient Pulse
.control
  let sim_type = 1 

  if sim_type = 1
    * Run DC Sweep for VTC and Noise Margins
    destroy all
    dc Vin 0 1.8 0.01
    run
    plot v(Vout) v(Vin) vs v(Vin)
    plot deriv(v(Vout))
  else
    * Run Transient Pulse Response
    destroy all
    tran 0.01ns 20ns
    run
    plot v(Vin) v(Vout) vs time
  end
.endc
"}
C {vsource.sym} -450 -40 0 0 {name=Vin1 value=1.8 savecurrent=false}
C {gnd.sym} -450 30 0 0 {name=l2 lab=GND}
C {vdd.sym} -450 -100 0 0 {name=l3 lab=VDD}
C {vdd.sym} -20 -140 0 0 {name=l4 lab=VDD}
C {sky130_fd_pr/corner.sym} 170 -100 0 0 {name=CORNER only_toplevel=false corner=tt}
C {gnd.sym} -20 100 0 0 {name=l5 lab=GND}
