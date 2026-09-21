v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -1000 -360 -1000 -300 {lab=VDD}
N -860 -360 -860 -300 {lab=D}
N -860 -240 -860 -220 {lab=gnd}
N -1000 -220 -860 -220 {lab=gnd}
N -770 -240 -770 -220 {lab=gnd}
N -870 -220 -770 -220 {lab=gnd}
N -680 -240 -680 -220 {lab=gnd}
N -770 -220 -680 -220 {lab=gnd}
N -770 -360 -770 -300 {lab=phi_bar}
N -680 -370 -680 -300 {lab=phi}
N -450 -100 -360 -100 {lab=D}
N -360 -100 -360 -90 {lab=D}
N -60 -390 10 -390 {lab=VDD}
N 10 -600 10 -390 {lab=VDD}
N -60 -90 10 -90 {lab=VDD}
N 10 -390 10 -90 {lab=VDD}
N -60 -50 -40 -50 {lab=gnd}
N -40 -50 -40 -20 {lab=gnd}
N -60 -350 -40 -350 {lab=gnd}
N -40 -350 -40 -340 {lab=gnd}
N -60 -70 30 -70 {lab=#net1}
N 30 -220 30 -70 {lab=#net1}
N 30 -220 40 -220 {lab=#net1}
N 340 -200 360 -200 {lab=gnd}
N 360 -200 360 -180 {lab=gnd}
N 340 -390 410 -390 {lab=VDD}
N 410 -580 410 -390 {lab=VDD}
N 340 -240 410 -240 {lab=VDD}
N 410 -390 410 -240 {lab=VDD}
N 340 -370 460 -370 {lab=#net2}
N 340 -220 460 -220 {lab=#net2}
N 460 -370 460 -220 {lab=#net2}
N -60 -370 40 -370 {lab=#net3}
N -440 -390 -360 -390 {lab=#net4}
N -440 -550 -440 -390 {lab=#net4}
N -440 -550 810 -540 {lab=#net4}
N 810 -540 810 -350 {lab=#net4}
N 760 -350 810 -350 {lab=#net4}
N 760 -370 790 -370 {lab=VDD}
N 790 -580 790 -370 {lab=VDD}
N 760 -330 780 -330 {lab=gnd}
N 780 -330 780 -300 {lab=gnd}
N 340 -350 360 -350 {lab=gnd}
N 360 -350 360 -320 {lab=gnd}
N 810 -240 960 -240 {lab=#net4}
N 810 -350 810 -240 {lab=#net4}
N 940 -370 960 -370 {lab=#net5}
N 940 -540 940 -370 {lab=#net5}
N 940 -540 2150 -530 {lab=#net5}
N 2150 -530 2150 -350 {lab=#net5}
N 2100 -350 2150 -350 {lab=#net5}
N 1260 -350 1370 -350 {lab=#net6}
N 1260 -220 1370 -220 {lab=#net7}
N 1670 -220 1800 -220 {lab=#net8}
N 1670 -350 1800 -350 {lab=#net8}
N 1800 -370 1800 -350 {lab=#net8}
N 1760 -350 1760 -220 {lab=#net8}
N 1670 -370 1690 -370 {lab=VDD}
N 1690 -400 1690 -370 {lab=VDD}
N 1670 -240 1690 -240 {lab=VDD}
N 1690 -260 1690 -240 {lab=VDD}
N 1670 -330 1690 -330 {lab=gnd}
N 1690 -330 1690 -320 {lab=gnd}
N 1670 -200 1690 -200 {lab=gnd}
N 1690 -200 1690 -170 {lab=gnd}
N 2100 -370 2120 -370 {lab=VDD}
N 2120 -410 2120 -370 {lab=VDD}
N 2100 -220 2130 -220 {lab=VDD}
N 2130 -250 2130 -220 {lab=VDD}
N 2100 -180 2130 -180 {lab=gnd}
N 2130 -180 2130 -160 {lab=gnd}
N 2100 -200 2190 -200 {lab=Q}
N 2100 -330 2130 -330 {lab=gnd}
N 2130 -330 2130 -320 {lab=gnd}
N 1260 -370 1280 -370 {lab=VDD}
N 1280 -400 1280 -370 {lab=VDD}
N 1260 -240 1270 -240 {lab=VDD}
N 1270 -270 1270 -240 {lab=VDD}
N 1260 -200 1280 -200 {lab=gnd}
N 1280 -200 1280 -180 {lab=gnd}
N 1260 -330 1290 -330 {lab=gnd}
N -1000 -240 -1000 -200 {lab=gnd}
N 2190 -200 2320 -200 {lab=Q}
N 2620 -200 2630 -200 {lab=VDD}
N 2630 -290 2630 -200 {lab=VDD}
N 2620 -160 2640 -160 {lab=gnd}
N 2640 -160 2640 -110 {lab=gnd}
C {vsource.sym} -1000 -270 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -860 -270 0 0 {name=V2 value=1.8 savecurrent=false}
C {vdd.sym} -1000 -360 0 0 {name=l14 lab=VDD}
C {lab_wire.sym} -860 -360 0 0 {name=p5 sig_type=std_logic lab=D}
C {sky130_fd_pr/corner.sym} 610 -950 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 2800 -1710 0 0 {name=sim only_toplevel=false value="
.control
* Force initial state so Q starts LOW
.ic v(Q)=0 v(net8)=1.8

let t_start = 9.3n
let t_step = 10p
let t_stop = 9.9n
let current_t = t_start
let min_tdq = 1
let opt_setup = 0
let opt_tcq = 0

let n_pts = floor((t_stop - t_start) / t_step)
let tdc_sweep = unitvec(n_pts)
let tcq_sweep = tdc_sweep * 0
let tdq_sweep = tdc_sweep * 0
let idx = 0

while current_t <= t_stop
    alter @V2[pulse] = [ 0 1.8 $&current_t 5p 5p 10n 20n ]
    tran 5p 15n uic

    meas tran tdc TRIG v(D) VAL=0.9 RISE=1 TD=8n TARG v(phi) VAL=0.9 RISE=1 TD=9n
    meas tran tcq TRIG v(phi) VAL=0.9 RISE=1 TD=9n TARG v(Q) VAL=0.9 RISE=1 TD=9.5n
    meas tran tdq TRIG v(D) VAL=0.9 RISE=1 TD=8n TARG v(Q) VAL=0.9 RISE=1 TD=9.5n

    let tdc_sweep[idx] = tdc
    if tcq > 0
        let tcq_sweep[idx] = tcq
    end
    if tdq > 0
        let tdq_sweep[idx] = tdq
    end

    * Capture the minimum tDQ and corresponding setup/tcq
    if tdq > 0
        if tdq < min_tdq
            let min_tdq = tdq
            let opt_setup = tdc
            let opt_tcq = tcq
        end
    end

    let idx = idx + 1
    let current_t = current_t + t_step
end

print opt_setup opt_tcq min_tdq

* Setup-time sweep: tDQ and tCQ vs tsetup (native ngspice plot)
plot tdq_sweep tcq_sweep vs tdc_sweep
setplot tran18
plot v(D) v(phi) v(Q) xlimit 9.5n 10.5n
print tcq_sweep tdq_sweep tdc_sweep
.endc
"}
C {vsource.sym} -770 -270 0 0 {name=V3 value="pulse 1.8 0 10n 5p 5p 9.99n 20n" savecurrent=false}
C {vsource.sym} -680 -270 0 0 {name=V5 value="pulse 0 1.8 10n 5p 5p 9.99n 20n" savecurrent=false}
C {lab_wire.sym} -770 -360 0 0 {name=p8 sig_type=std_logic lab=phi_bar}
C {lab_wire.sym} -680 -370 0 0 {name=p9 sig_type=std_logic lab=phi}
C {transmission_gate.sym} 190 -370 0 0 {name=x1}
C {inv.sym} -210 -370 0 0 {name=x2}
C {inv.sym} -210 -70 0 0 {name=x3}
C {lab_wire.sym} -450 -100 0 0 {name=p1 sig_type=std_logic lab=D}
C {vdd.sym} 10 -600 0 0 {name=l1 lab=VDD}
C {gnd.sym} -40 -340 0 0 {name=l2 lab=gnd}
C {gnd.sym} -40 -20 0 0 {name=l4 lab=gnd}
C {transmission_gate.sym} 190 -220 0 0 {name=x4}
C {gnd.sym} 360 -180 0 0 {name=l5 lab=gnd}
C {vdd.sym} 410 -580 0 0 {name=l6 lab=VDD}
C {inv.sym} 610 -350 0 0 {name=x5}
C {vdd.sym} 790 -580 0 0 {name=l7 lab=VDD}
C {gnd.sym} 780 -300 0 0 {name=l8 lab=gnd}
C {lab_wire.sym} 40 -350 0 0 {name=p2 sig_type=std_logic lab=phi}
C {lab_wire.sym} 40 -240 0 0 {name=p3 sig_type=std_logic lab=phi}
C {lab_wire.sym} 40 -390 0 0 {name=p4 sig_type=std_logic lab=phi_bar}
C {lab_wire.sym} 40 -200 0 0 {name=p6 sig_type=std_logic lab=phi_bar}
C {gnd.sym} 360 -320 0 0 {name=l9 lab=gnd}
C {inv.sym} 1110 -350 0 0 {name=x6}
C {inv.sym} 1110 -220 0 0 {name=x7}
C {inv.sym} 1950 -350 0 0 {name=x8}
C {transmission_gate.sym} 1520 -350 0 0 {name=x9}
C {transmission_gate.sym} 1520 -220 0 0 {name=x10}
C {inv.sym} 1950 -200 0 0 {name=x11}
C {lab_wire.sym} 1370 -370 0 0 {name=p7 sig_type=std_logic lab=phi}
C {lab_wire.sym} 1370 -330 0 0 {name=p10 sig_type=std_logic lab=phi_bar}
C {lab_wire.sym} 1370 -200 0 0 {name=p11 sig_type=std_logic lab=phi}
C {lab_wire.sym} 1370 -240 0 0 {name=p12 sig_type=std_logic lab=phi_bar}
C {vdd.sym} 1690 -400 0 0 {name=l10 lab=VDD}
C {vdd.sym} 1690 -260 0 0 {name=l11 lab=VDD}
C {gnd.sym} 1690 -170 0 0 {name=l12 lab=gnd}
C {gnd.sym} 1690 -320 0 0 {name=l13 lab=gnd}
C {vdd.sym} 2120 -410 0 0 {name=l16 lab=VDD}
C {vdd.sym} 2130 -250 0 0 {name=l17 lab=VDD}
C {gnd.sym} 2130 -160 0 0 {name=l18 lab=gnd}
C {lab_wire.sym} 2190 -200 0 0 {name=p13 sig_type=std_logic lab=Q}
C {gnd.sym} 2130 -320 0 0 {name=l19 lab=gnd}
C {vdd.sym} 1280 -400 0 0 {name=l20 lab=VDD}
C {vdd.sym} 1270 -270 0 0 {name=l21 lab=VDD}
C {gnd.sym} 1280 -180 0 0 {name=l22 lab=gnd}
C {gnd.sym} 1290 -330 0 0 {name=l23 lab=gnd}
C {gnd.sym} -1000 -200 0 0 {name=l3 lab=gnd}
C {inv.sym} 2470 -180 0 0 {name=x12}
C {vdd.sym} 2630 -290 0 0 {name=l15 lab=VDD}
C {gnd.sym} 2640 -110 0 0 {name=l24 lab=gnd}
