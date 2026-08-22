v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -20 -50 40 -50 {lab=#net1}
N 340 -50 420 -50 {lab=#net2}
N 720 -50 780 -50 {lab=#net3}
N 1080 -50 1140 -50 {lab=#net4}
N 1440 -50 1520 -50 {lab=#net5}
N 1820 -50 1890 -50 {lab=#net6}
N 2190 -50 2280 -50 {lab=vout}
N 2280 -50 2280 80 {lab=vout}
N -330 80 2280 80 {lab=vout}
N -330 -50 -330 80 {lab=vout}
N -330 -50 -320 -50 {lab=vout}
N -600 30 -600 90 {lab=VDD}
N -600 150 -600 200 {lab=GND}
C {inverter.sym} -170 -50 0 0 {name=x1}
C {inverter.sym} 190 -50 0 0 {name=x2}
C {inverter.sym} 570 -50 0 0 {name=x3}
C {inverter.sym} 930 -50 0 0 {name=x4}
C {inverter.sym} 1290 -50 0 0 {name=x5}
C {inverter.sym} 1670 -50 0 0 {name=x6}
C {inverter.sym} 2040 -50 0 0 {name=x7}
C {lab_wire.sym} 2280 -50 0 0 {name=p1 sig_type=std_logic lab=vout}
C {vsource.sym} -600 120 0 0 {name=V1 value=1.8 savecurrent=false}
C {vdd.sym} -600 30 0 0 {name=l1 lab=VDD}
C {gnd.sym} -600 200 0 0 {name=l2 lab=GND}
C {code_shown.sym} -330 270 0 0 {name=s1 only_toplevel=false value="
.param VDDVal = 1.8
.param width_p = 0.84

* Force Vout to 0V at t=0 to kickstart the oscillation
.ic v(vout)=0

.control
* Run transient analysis for 5ns.
tran 1p 5n uic

* CORRECTED: Use 'WHEN' to grab the exact timestamp of the edges
meas tran t1 WHEN v(vout)=0.9 rise=3
meas tran t2 WHEN v(vout)=0.9 rise=4

* Calculate period and frequency (Frequency = 1 / Period)
let period = t2 - t1
let freq = 1 / period

* Print the results to the terminal
print period
print freq

* Plot the oscillating waveform
plot v(vout)
.endc
"}
C {sky130_fd_pr/corner.sym} -620 290 0 0 {name=CORNER only_toplevel=false corner=tt}
