v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 870 390 930 390 {lab=#net1}
N 1230 390 1310 390 {lab=#net2}
N 1610 390 1670 390 {lab=#net3}
N 1970 390 2030 390 {lab=#net4}
N 2330 390 2410 390 {lab=#net5}
N 2710 390 2780 390 {lab=#net6}
N 560 390 560 520 {lab=vout}
N 560 390 570 390 {lab=vout}
N 290 470 290 530 {lab=VDD}
N 290 590 290 640 {lab=GND}
N 3080 390 3120 390 {lab=#net7}
N 3420 390 3460 390 {lab=#net8}
N 3760 390 3870 390 {lab=vout}
N 3870 390 3870 530 {lab=vout}
N 560 520 3870 530 {lab=vout}
C {inverter.sym} 720 390 0 0 {name=x1}
C {inverter.sym} 1080 390 0 0 {name=x2}
C {inverter.sym} 1460 390 0 0 {name=x3}
C {inverter.sym} 1820 390 0 0 {name=x4}
C {inverter.sym} 2180 390 0 0 {name=x5}
C {inverter.sym} 2560 390 0 0 {name=x6}
C {inverter.sym} 2930 390 0 0 {name=x7}
C {lab_wire.sym} 3870 390 0 0 {name=p1 sig_type=std_logic lab=vout}
C {vsource.sym} 290 560 0 0 {name=V1 value=\{vdd_val\} savecurrent=false
}
C {gnd.sym} 290 640 0 0 {name=l2 lab=GND}
C {code_shown.sym} 560 710 0 0 {name=s1 only_toplevel=false value="
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
C {sky130_fd_pr/corner.sym} 270 730 0 0 {name=CORNER only_toplevel=false corner=tt}
C {lab_wire.sym} 290 470 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {inverter.sym} 3270 390 0 0 {name=x8}
C {inverter.sym} 3610 390 0 0 {name=x9}
