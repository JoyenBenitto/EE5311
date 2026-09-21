v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -490 610 -490 670 {lab=VDD}
N -350 610 -350 670 {lab=D}
N -350 730 -350 750 {lab=gnd}
N -490 750 -350 750 {lab=gnd}
N -260 730 -260 750 {lab=gnd}
N -360 750 -260 750 {lab=gnd}
N -170 730 -170 750 {lab=gnd}
N -260 750 -170 750 {lab=gnd}
N -260 610 -260 670 {lab=phi_bar}
N -170 600 -170 670 {lab=phi}
N 60 870 150 870 {lab=D}
N 150 870 150 880 {lab=D}
N 450 580 520 580 {lab=VDD}
N 520 370 520 580 {lab=VDD}
N 450 880 520 880 {lab=VDD}
N 520 580 520 880 {lab=VDD}
N 450 920 470 920 {lab=gnd}
N 470 920 470 950 {lab=gnd}
N 450 620 470 620 {lab=gnd}
N 470 620 470 630 {lab=gnd}
N 450 900 540 900 {lab=#net1}
N 540 750 540 900 {lab=#net1}
N 540 750 550 750 {lab=#net1}
N 850 770 870 770 {lab=gnd}
N 870 770 870 790 {lab=gnd}
N 850 580 920 580 {lab=VDD}
N 920 390 920 580 {lab=VDD}
N 850 730 920 730 {lab=VDD}
N 920 580 920 730 {lab=VDD}
N 850 600 970 600 {lab=#net2}
N 850 750 970 750 {lab=#net2}
N 970 600 970 750 {lab=#net2}
N 450 600 550 600 {lab=#net3}
N 70 580 150 580 {lab=#net4}
N 70 420 70 580 {lab=#net4}
N 70 420 1320 430 {lab=#net4}
N 1320 430 1320 620 {lab=#net4}
N 1270 620 1320 620 {lab=#net4}
N 1270 600 1300 600 {lab=VDD}
N 1300 390 1300 600 {lab=VDD}
N 1270 640 1290 640 {lab=gnd}
N 1290 640 1290 670 {lab=gnd}
N 850 620 870 620 {lab=gnd}
N 870 620 870 650 {lab=gnd}
N 1320 730 1470 730 {lab=#net4}
N 1320 620 1320 730 {lab=#net4}
N 1450 600 1470 600 {lab=#net5}
N 1450 430 1450 600 {lab=#net5}
N 1450 430 2660 440 {lab=#net5}
N 2660 440 2660 620 {lab=#net5}
N 2610 620 2660 620 {lab=#net5}
N 1770 620 1880 620 {lab=#net6}
N 1770 750 1880 750 {lab=#net7}
N 2180 750 2310 750 {lab=#net8}
N 2180 620 2310 620 {lab=#net8}
N 2310 600 2310 620 {lab=#net8}
N 2270 620 2270 750 {lab=#net8}
N 2180 600 2200 600 {lab=VDD}
N 2200 570 2200 600 {lab=VDD}
N 2180 730 2200 730 {lab=VDD}
N 2200 710 2200 730 {lab=VDD}
N 2180 640 2200 640 {lab=gnd}
N 2200 640 2200 650 {lab=gnd}
N 2180 770 2200 770 {lab=gnd}
N 2200 770 2200 800 {lab=gnd}
N 2610 600 2630 600 {lab=VDD}
N 2630 560 2630 600 {lab=VDD}
N 2610 750 2640 750 {lab=VDD}
N 2640 720 2640 750 {lab=VDD}
N 2610 790 2640 790 {lab=gnd}
N 2640 790 2640 810 {lab=gnd}
N 2610 770 2700 770 {lab=Q}
N 2610 640 2640 640 {lab=gnd}
N 2640 640 2640 650 {lab=gnd}
N 1770 600 1790 600 {lab=VDD}
N 1790 570 1790 600 {lab=VDD}
N 1770 730 1780 730 {lab=VDD}
N 1780 700 1780 730 {lab=VDD}
N 1770 770 1790 770 {lab=gnd}
N 1790 770 1790 790 {lab=gnd}
N 1770 640 1800 640 {lab=gnd}
N -490 730 -490 770 {lab=gnd}
N 3040 1060 3050 1060 {lab=VDD}
N 3050 970 3050 1060 {lab=VDD}
N 3040 1100 3060 1100 {lab=gnd}
N 3060 1100 3060 1150 {lab=gnd}
N 2740 760 2740 1060 {lab=Q}
N 2700 770 2740 760 {lab=Q}
C {vsource.sym} -490 700 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -350 700 0 0 {name=V2 value=0 savecurrent=false}
C {vdd.sym} -490 610 0 0 {name=l14 lab=VDD}
C {lab_wire.sym} -350 610 0 0 {name=p5 sig_type=std_logic lab=D}
C {sky130_fd_pr/corner.sym} 1120 20 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 2900 -190 0 0 {name=sim only_toplevel=false value="
.control
* Initialize variables for the sweep
let t_start = 9.5n
let t_step = 10p
let t_stop = 9.88n
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
    * Alter D input pulse delay
    alter @V2[pulse] = [ 1.8 0 $&current_t 5p 5p 10n 20n ]

    * Run transient analysis WITHOUT 'uic' so SPICE calculates the DC operating point
    tran 5p 15n

    * Measurements
    meas tran tdc TRIG v(D) VAL=0.9 FALL=1 TARG v(phi) VAL=0.9 RISE=1
    meas tran tcq TRIG v(phi) VAL=0.9 RISE=1 TARG v(Q) VAL=0.9 FALL=1 TD=10n
    meas tran tdq TRIG v(D) VAL=0.9 FALL=1 TARG v(Q) VAL=0.9 FALL=1 TD=10n

    let tdc_sweep[idx] = tdc
    if tcq > 0
        let tcq_sweep[idx] = tcq
    end
    if tdq > 0
        let tdq_sweep[idx] = tdq
    end

    * Safely check if tdq was measured successfully before comparing
    if length(tdq) > 0
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
.endc
"}
C {vsource.sym} -260 700 0 0 {name=V3 value="pulse 1.8 0 10n 5p 5p 9.99n 20n" savecurrent=false}
C {vsource.sym} -170 700 0 0 {name=V5 value="pulse 0 1.8 10n 5p 5p 9.99n 20n" savecurrent=false}
C {lab_wire.sym} -260 610 0 0 {name=p8 sig_type=std_logic lab=phi_bar}
C {lab_wire.sym} -170 600 0 0 {name=p9 sig_type=std_logic lab=phi}
C {transmission_gate.sym} 700 600 0 0 {name=x1}
C {inv.sym} 300 600 0 0 {name=x2}
C {inv.sym} 300 900 0 0 {name=x3}
C {lab_wire.sym} 60 870 0 0 {name=p1 sig_type=std_logic lab=D}
C {vdd.sym} 520 370 0 0 {name=l1 lab=VDD}
C {gnd.sym} 470 630 0 0 {name=l2 lab=gnd}
C {gnd.sym} 470 950 0 0 {name=l4 lab=gnd}
C {transmission_gate.sym} 700 750 0 0 {name=x4}
C {gnd.sym} 870 790 0 0 {name=l5 lab=gnd}
C {vdd.sym} 920 390 0 0 {name=l6 lab=VDD}
C {inv.sym} 1120 620 0 0 {name=x5}
C {vdd.sym} 1300 390 0 0 {name=l7 lab=VDD}
C {gnd.sym} 1290 670 0 0 {name=l8 lab=gnd}
C {lab_wire.sym} 550 620 0 0 {name=p2 sig_type=std_logic lab=phi}
C {lab_wire.sym} 550 730 0 0 {name=p3 sig_type=std_logic lab=phi}
C {lab_wire.sym} 550 580 0 0 {name=p4 sig_type=std_logic lab=phi_bar}
C {lab_wire.sym} 550 770 0 0 {name=p6 sig_type=std_logic lab=phi_bar}
C {gnd.sym} 870 650 0 0 {name=l9 lab=gnd}
C {inv.sym} 1620 620 0 0 {name=x6}
C {inv.sym} 1620 750 0 0 {name=x7}
C {inv.sym} 2460 620 0 0 {name=x8}
C {transmission_gate.sym} 2030 620 0 0 {name=x9}
C {transmission_gate.sym} 2030 750 0 0 {name=x10}
C {inv.sym} 2460 770 0 0 {name=x11}
C {lab_wire.sym} 1880 600 0 0 {name=p7 sig_type=std_logic lab=phi}
C {lab_wire.sym} 1880 640 0 0 {name=p10 sig_type=std_logic lab=phi_bar}
C {lab_wire.sym} 1880 770 0 0 {name=p11 sig_type=std_logic lab=phi}
C {lab_wire.sym} 1880 730 0 0 {name=p12 sig_type=std_logic lab=phi_bar}
C {vdd.sym} 2200 570 0 0 {name=l10 lab=VDD}
C {vdd.sym} 2200 710 0 0 {name=l11 lab=VDD}
C {gnd.sym} 2200 800 0 0 {name=l12 lab=gnd}
C {gnd.sym} 2200 650 0 0 {name=l13 lab=gnd}
C {vdd.sym} 2630 560 0 0 {name=l16 lab=VDD}
C {vdd.sym} 2640 720 0 0 {name=l17 lab=VDD}
C {gnd.sym} 2640 810 0 0 {name=l18 lab=gnd}
C {lab_wire.sym} 2700 770 0 0 {name=p13 sig_type=std_logic lab=Q}
C {gnd.sym} 2640 650 0 0 {name=l19 lab=gnd}
C {vdd.sym} 1790 570 0 0 {name=l20 lab=VDD}
C {vdd.sym} 1780 700 0 0 {name=l21 lab=VDD}
C {gnd.sym} 1790 790 0 0 {name=l22 lab=gnd}
C {gnd.sym} 1800 640 0 0 {name=l23 lab=gnd}
C {gnd.sym} -490 770 0 0 {name=l3 lab=gnd}
C {inv.sym} 2890 1080 0 0 {name=x12}
C {vdd.sym} 3050 970 0 0 {name=l15 lab=VDD}
C {gnd.sym} 3060 1150 0 0 {name=l24 lab=gnd}
