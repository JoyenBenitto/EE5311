v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 310 480 310 520 {lab=inp}
N 310 580 310 620 {lab=GND}
N 510 420 620 420 {lab=inp}
N 920 420 990 420 {lab=#net1}
N 1290 420 1400 420 {lab=out22}
N 920 440 920 480 {lab=#net2}
N 920 540 920 570 {lab=GND}
N 220 490 220 530 {lab=VDD}
N 220 590 220 620 {lab=GND}
N 220 620 310 620 {lab=GND}
C {code_shown.sym} 1760 90 0 0 {name=sim only_toplevel=false value="
.param VDDVal = 1.8
.param width_p = 0.84

.save all

.control
let Nsim = 9
let edpvec = vector(Nsim)
let edpvec_ana = vector(Nsim)
let vddvec = vector(Nsim)
let index = 0

* Analytical Constants from your notes
let Ctot = 3.8e-15
let Vtn = 0.7
let Vtp = 0.7
let EcnLn = 0.96
let EcpLp = 1.0
let Kn_WL = 5.838e-4
let Kp_WL = 4.112e-4

while index < Nsim
  let vddv = 1.0 + (index * 0.1)
  let vby2 = vddv / 2

  alterparam VDDVal = $&vddv
  reset
  tran 1p 600p

  * 1. Simulated Delay & Energy
  meas tran thl trig v(inp) val=$&vby2 rise=1 targ v(net1) val=$&vby2 fall=1
  meas tran tlh trig v(inp) val=$&vby2 fall=1 targ v(net1) val=$&vby2 rise=1
  let tp_sim = (thl + tlh) / 2
  
  * Integrate current to get Charge (Q), then Energy = Q * VDD
  meas tran iinteg integ i(vmeas)
  let edpvec[index] = abs(iinteg) * vddv * tp_sim

  * 2. Analytical Delay & Energy
  let num_hl = Ctot * vby2 * (EcnLn + vddv - Vtn)
  let den_hl = Kn_WL * EcnLn * (vddv - Vtn) * (vddv - Vtn)
  let tphl_ana = num_hl / den_hl

  let num_lh = Ctot * vby2 * (EcpLp + vddv - Vtp)
  let den_lh = Kp_WL * EcpLp * (vddv - Vtp) * (vddv - Vtp)
  let tplh_ana = num_lh / den_lh
  
  let tp_ana = (tphl_ana + tplh_ana) / 2
  
  * Analytical EDP = (C * VDD^2) * tp
  let edpvec_ana[index] = (Ctot * vddv * vddv) * tp_ana

  let vddvec[index] = vddv
  let index = index + 1
end

* Plot Simulated vs Analytical EDP
plot edpvec edpvec_ana vs vddvec
.endc
"}
C {sky130_fd_pr/corner.sym} 1430 870 0 0 {name=CORNER only_toplevel=false corner=tt}
C {vsource.sym} 310 550 0 0 {name=vin value="PULSE(0 \{VDDVal\} 0 5ps 5ps 250ps 600ps)" savecurrent=false}
C {gnd.sym} 310 620 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 1400 420 0 0 {name=p2 sig_type=std_logic lab=out22}
C {lab_wire.sym} 510 420 0 0 {name=p4 sig_type=std_logic lab=inp}
C {ignd.sym} 770 430 0 0 {name=x1}
C {inverter.sym} 1140 420 0 0 {name=x2}
C {ammeter.sym} 920 510 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {gnd.sym} 920 570 0 0 {name=l4 lab=GND}
C {vsource.sym} 220 560 0 0 {name=vdd value=\{VDDval\} savecurrent=false}
C {vdd.sym} 220 490 0 0 {name=l5 lab=VDD}
C {lab_wire.sym} 310 480 0 0 {name=p1 sig_type=std_logic lab=inp}
