v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 600 170 660 170 {lab=#net1}
N 960 170 1040 170 {lab=#net2}
N 1340 170 1400 170 {lab=#net3}
N 1700 170 1760 170 {lab=#net4}
N 2060 170 2140 170 {lab=#net5}
N 2440 170 2510 170 {lab=#net6}
N 2810 170 2900 170 {lab=vout}
N 2900 170 2900 300 {lab=vout}
N 290 300 2900 300 {lab=vout}
N 290 170 290 300 {lab=vout}
N 290 170 300 170 {lab=vout}
N 20 250 20 310 {lab=VDD}
N 20 370 20 420 {lab=GND}
C {inverter.sym} 450 170 0 0 {name=x1}
C {inverter.sym} 810 170 0 0 {name=x2}
C {inverter.sym} 1190 170 0 0 {name=x3}
C {inverter.sym} 1550 170 0 0 {name=x4}
C {inverter.sym} 1910 170 0 0 {name=x5}
C {inverter.sym} 2290 170 0 0 {name=x6}
C {inverter.sym} 2660 170 0 0 {name=x7}
C {lab_wire.sym} 2900 170 0 0 {name=p1 sig_type=std_logic lab=vout}
C {vsource.sym} 20 340 0 0 {name=V1 value=\{vdd_val\} savecurrent=false
}
C {gnd.sym} 20 420 0 0 {name=l2 lab=GND}
C {code_shown.sym} 290 490 0 0 {name=s1 only_toplevel=false value="
.param vdd_val = 1.8
.param width_p = 0.84

.ic v(vout)=0

.control
let Nsim = 9
let periodvec = vector(Nsim)
let freqvec = vector(Nsim)
let vddvec = vector(Nsim)
let index = 0

while index < Nsim
  let vddv = 1.0 + (index * 0.1)

  alterparam vdd_val = $&vddv
  reset
  
  * Increase transient time to 20ns to ensure lower VDDs fully stabilize
  tran 1p 20n uic

  * Measure between later edges (rise=8 and rise=9) to avoid startup transients
  meas tran t1 WHEN v(vout)=0.5 rise=8
  meas tran t2 WHEN v(vout)=0.5 rise=9

  let periodvec[index] = t2 - t1
  let freqvec[index] = 1 / (t2 - t1)
  let vddvec[index] = vddv

  let index = index + 1
end

plot freqvec vs vddvec
plot periodvec vs vddvec
.endc
"}
C {sky130_fd_pr/corner.sym} 0 510 0 0 {name=CORNER only_toplevel=false corner=tt}
C {lab_wire.sym} 20 250 0 0 {name=p2 sig_type=std_logic lab=VDD}
