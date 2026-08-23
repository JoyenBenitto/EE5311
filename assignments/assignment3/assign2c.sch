v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 560 390 560 520 {lab=vout}
N 560 390 570 390 {lab=vout}
N 290 470 290 530 {lab=VDD}
N 290 590 290 640 {lab=GND}
N 3870 390 3870 530 {lab=vout}
N 560 520 3870 530 {lab=vout}
N 710 390 930 390 {lab=#net1}
N 1070 390 1310 390 {lab=#net2}
N 1450 390 1670 390 {lab=#net3}
N 1810 390 2030 390 {lab=#net4}
N 2170 390 2410 390 {lab=#net5}
N 2550 390 2780 390 {lab=#net6}
N 2920 390 3120 390 {lab=#net7}
N 3260 390 3460 390 {lab=#net8}
N 3600 390 3870 390 {lab=vout}
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
  * Give it plenty of time (40ns) so 1.0V and 1.1V fully settle

  * Give it a massive window (100ns) so 1.0V can easily hit 5 edges
  tran 1p 100n uic

  meas tran t1 WHEN v(vout)=0.4 rise=4
  meas tran t2 WHEN v(vout)=0.4 rise=5

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
