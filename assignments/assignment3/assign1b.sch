v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -1060 -20 -1060 20 {lab=inp}
N -1060 80 -1060 120 {lab=GND}
N -860 -80 -750 -80 {lab=inp}
N -450 -80 -380 -80 {lab=#net1}
N -80 -80 30 -80 {lab=out22}
N -450 -60 -450 -20 {lab=#net2}
N -450 40 -450 70 {lab=GND}
N -1150 -10 -1150 30 {lab=VDD}
N -1150 90 -1150 120 {lab=GND}
N -1150 120 -1060 120 {lab=GND}
C {code_shown.sym} 390 -410 0 0 {name=sim only_toplevel=false value="
.param VDDVal = 1.8
.param width_p = 0.84

.save all

.control
let Nsim = 9
let delayvec = vector(Nsim)
let delayvec_ana = vector(Nsim)
let vddvec = vector(Nsim)
let index = 0

* Analytical Constants
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

  * 1. SIMULATED DELAY (SPICE)
  meas tran thl trig v(inp) val=$&vby2 rise=1 targ v(net1) val=$&vby2 fall=1
  meas tran tlh trig v(inp) val=$&vby2 fall=1 targ v(net1) val=$&vby2 rise=1
  let delayvec[index] = (thl + tlh) / 2

  * 2. ANALYTICAL DELAY (Velocity Saturation Model)
  let num_hl = Ctot * vby2 * (EcnLn + vddv - Vtn)
  let den_hl = Kn_WL * EcnLn * (vddv - Vtn) * (vddv - Vtn)
  let tphl_ana = num_hl / den_hl

  let num_lh = Ctot * vby2 * (EcpLp + vddv - Vtp)
  let den_lh = Kp_WL * EcpLp * (vddv - Vtp) * (vddv - Vtp)
  let tplh_ana = num_lh / den_lh

  let delayvec_ana[index] = (tphl_ana + tplh_ana) / 2
  
  * 3. LOG X-AXIS
  let vddvec[index] = vddv
  let index = index + 1
end

* Plot both the Simulated (delayvec) and Analytical (delayvec_ana) curves
plot delayvec delayvec_ana vs vddvec
.endc
"}
C {sky130_fd_pr/corner.sym} 60 730 0 0 {name=CORNER only_toplevel=false corner=tt}
C {vsource.sym} -1060 50 0 0 {name=vin value="PULSE(0 \{VDDVal\} 0 5ps 5ps 250ps 600ps)" savecurrent=false}
C {gnd.sym} -1060 120 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 30 -80 0 0 {name=p2 sig_type=std_logic lab=out22}
C {lab_wire.sym} -860 -80 0 0 {name=p4 sig_type=std_logic lab=inp}
C {ignd.sym} -600 -70 0 0 {name=x1}
C {inverter.sym} -230 -80 0 0 {name=x2}
C {ammeter.sym} -450 10 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {gnd.sym} -450 70 0 0 {name=l4 lab=GND}
C {vsource.sym} -1150 60 0 0 {name=vdd value=\{VDDval\} savecurrent=false}
C {vdd.sym} -1150 -10 0 0 {name=l5 lab=VDD}
C {lab_wire.sym} -1060 -20 0 0 {name=p1 sig_type=std_logic lab=inp}
