v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -110 30 -110 70 {lab=GND}
N 230 -10 230 50 {lab=Vout}
N 60 10 160 10 {lab=Vin}
N 160 -40 160 10 {lab=Vin}
N 160 -40 190 -40 {lab=Vin}
N 160 80 190 80 {lab=Vin}
N 160 10 160 80 {lab=Vin}
N 230 20 360 20 {lab=Vout}
N -200 30 -200 70 {lab=GND}
N -200 -60 -200 -30 {lab=VDD}
N 230 -100 230 -70 {lab=VDD}
N 230 110 230 140 {lab=GND}
C {vsource.sym} -110 0 0 0 {name=Vin value="pulse(0 1.8 0 1ns 1ns 5ns 10ns)" savecurrent=false}
C {lab_wire.sym} -110 -30 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {gnd.sym} -110 70 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} 210 -40 0 0 {name=M1
W=1.1995
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
C {sky130_fd_pr/nfet3_01v8.sym} 210 80 0 0 {name=M2
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
C {lab_wire.sym} 60 10 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 360 20 0 0 {name=p3 sig_type=std_logic lab=Vout}
C {code_shown.sym} 680 -120 0 0 {name=sim only_toplevel=false value="
* Control flag: 1 for DC Sweep / VTC, 2 for Transient Pulse
.control
  let sim_type = 1

  if sim_type = 1
    * Run DC Sweep for VTC and Noise Margins
    destroy all
    dc Vin 0 1.8 0.01
    run
    plot v(Vout) v(Vin) vs v(Vin)
    let dvout = deriv(v(Vout))
    plot dvout

    * Extract Vth (Vin=Vout crossing) and unity-gain points VIL/VIH for noise margins
    meas dc vth  find v(Vin) when v(Vout)=v(Vin)
    meas dc vil  find v(Vin) when dvout=-1 rise=1
    meas dc vih  find v(Vin) when dvout=-1 fall=1
    meas dc vol  find v(Vout) at=vih
    meas dc voh  find v(Vout) at=vil
  else
    * Run Transient Pulse Response
    destroy all
    tran 0.01ns 20ns
    run
    plot v(Vin) v(Vout) vs time
  end
.endc
"}
C {vsource.sym} -200 0 0 0 {name=Vin1 value=1.8 savecurrent=false}
C {gnd.sym} -200 70 0 0 {name=l2 lab=GND}
C {vdd.sym} -200 -60 0 0 {name=l3 lab=VDD}
C {vdd.sym} 230 -100 0 0 {name=l4 lab=VDD}
C {sky130_fd_pr/corner.sym} 420 -60 0 0 {name=CORNER only_toplevel=false corner=tt}
C {gnd.sym} 230 140 0 0 {name=l5 lab=GND}
