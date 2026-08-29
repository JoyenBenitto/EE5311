v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -450 -140 -450 -60 {lab=vdd}
N -450 -0 -450 40 {lab=GND}
N 30 -50 100 -50 {lab=#net1}
N 100 -160 100 -50 {lab=#net1}
N -290 -160 100 -160 {lab=#net1}
N -290 -160 -290 -70 {lab=#net1}
N -290 -70 -270 -70 {lab=#net1}
N 30 -30 70 -30 {lab=GND}
N 70 -30 70 30 {lab=GND}
N 30 -70 70 -70 {lab=vdd}
C {ro7.sym} -120 -50 0 0 {name=x1}
C {vsource.sym} -450 -30 0 0 {name=V1 value=\{vdd_val\} savecurrent=false}
C {gnd.sym} -450 40 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -450 -140 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {code_shown.sym} 290 -200 0 0 {name=sim only_toplevel=false value="
.ic v(vout)=0
.param vdd_val=1.8
.control
* Run transient analysis for 5ns.
tran 1p 5n uic

* CORRECTED: Use 'WHEN' to grab the exact timestamp of the edges
meas tran t1 WHEN v(out)=0.9 rise=4
meas tran t2 WHEN v(out)=0.9 rise=5

* Calculate period and frequency (Frequency = 1 / Period)
let period = t2 - t1
let freq = 1 / period

* Print the results to the terminal
print period
print freq

* Plot the oscillating waveform
plot v(out)
.endc
"}
C {gnd.sym} 70 30 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 70 -70 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/corner.sym} 310 250 0 0 {name=CORNER only_toplevel=false corner=tt}
C {lab_wire.sym} 50 -160 0 0 {name=p3 sig_type=std_logic lab=out}
