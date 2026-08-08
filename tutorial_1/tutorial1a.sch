v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 3620 -660 {}
P 4 1 3530 -670 {}
P 4 1 3070 -840 {}
P 4 1 3070 -840 {}
N 3560 -710 3600 -710 {lab=Vin}
N 3560 -710 3560 -680 {lab=Vin}
N 3600 -650 3600 -620 {lab=GND}
N 3520 -680 3560 -680 {lab=Vin}
N 3340 -630 3340 -600 {lab=GND}
N 3340 -740 3340 -690 {lab=Vin}
N 3600 -680 3680 -680 {lab=GND}
N 3680 -680 3680 -630 {lab=GND}
N 3600 -630 3680 -630 {lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 3580 -680 0 0 {name=M1
W=0.45
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X}
C {gnd.sym} 3600 -620 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 3520 -680 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {code_shown.sym} 3740 -790 0 0 {name=sim1
only_toplevel=false
value="
.lib /home/joyenbenitto/pdk/open_pdks/sources/sky130_fd_pr/combined_models/sky130.lib.spice tt

.control
save all
dc Vin1 0 1.8 0.01
let mu = 0.025
let WbyL = 0.42/0.15
let Cox = 0.00834
let Vth = 0.7
let vsat = 8e4
let Vgs = v(Vin)
let Vds = Vgs
let lambdan = 0.2
let EcL = 2*vsat * 0.15e-6/mu
let Vgt = max(Vgs - Vth, 0)
let Vdsat = (Vgt)*EcL/(Vgt + EcL)
let Vmin = min(Vgs, Vdsat)
let idfit = 0.5*mu*Cox*WbyL*EcL*(Vgt^2)*(1 + lambdan * Vds)/(Vgt + EcL)
set filetype=ascii
wrdata nmos_ids_vgs.txt -I(Vin1) idfit
plot -I(Vin1) idfit
.endc
"}
C {vsource.sym} 3340 -660 0 0 {name=Vin1 value=1.8 savecurrent=false}
C {gnd.sym} 3340 -600 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 3340 -740 0 0 {name=p2 sig_type=std_logic lab=Vin}
