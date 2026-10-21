v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -820 -120 -820 -10 {lab=VDD}
N -820 50 -820 160 {lab=gnd}
N -820 160 -520 160 {lab=gnd}
N -440 -60 -440 -10 {lab=val0}
N -440 50 -440 160 {lab=gnd}
N -360 -60 -360 -10 {lab=val1}
N -360 50 -360 160 {lab=gnd}
N -520 160 -360 160 {lab=gnd}
N 120 10 240 10 {lab=sout0}
N 120 -10 240 -10 {lab=sout1}
N 120 -30 240 -30 {lab=sout4}
N 120 -50 240 -50 {lab=sout5}
N 120 -70 240 -70 {lab=sout2}
N 120 -90 240 -90 {lab=sout6}
N 120 -110 240 -110 {lab=#net1}
N 120 -130 240 -130 {lab=sout3}
N 120 -150 240 -150 {lab=#net2}
N -520 -60 -520 -10 {lab=cin}
N -520 50 -520 160 {lab=gnd}
N 310 -170 310 50 {lab=gnd}
N 120 -170 310 -170 {lab=gnd}
N 240 -150 350 -150 {lab=#net2}
N 350 -200 350 -150 {lab=#net2}
N 240 -110 350 -110 {lab=#net1}
N 650 -160 740 -160 {lab=gnd}
N 650 -70 750 -70 {lab=gnd}
N 650 -180 720 -180 {lab=cout}
N 650 -90 740 -90 {lab=sout7}
C {rca8.sym} -30 -30 0 0 {name=x1}
C {code_shown.sym} 160 -870 0 0 {name=sim only_toplevel=false value="
.include "rca8_extracted.spice"
.save all
.control
alter @va2[pulse] = [ 0 1.8 10p 10p 0p 4n 8n ]
tran 5p 40n

* cin -> cout7 (adder output, before the load inverter x3)
meas tran c_delay_fall TRIG v(cin) VAL=0.9 RISE=3 TARG v(cout) VAL=0.9 FALL=3
meas tran c_delay_rise TRIG v(cin) VAL=0.9 FALL=3 TARG v(cout) VAL=0.9 RISE=3

* cin -> sum7 (adder output, before the output inverter x2)
meas tran s_delay_rise TRIG v(cin) VAL=0.9 RISE=3 TARG v(sout7) VAL=0.9 RISE=3
meas tran s_delay_fall TRIG v(cin) VAL=0.9 FALL=3 TARG v(sout7) VAL=0.9 FALL=3

let cin_to_cout=(c_delay_rise+c_delay_fall)/2
let cin_to_s7=(s_delay_rise+s_delay_fall)/2
print cin_to_cout cin_to_s7
plot v(cin)  v(cout)
.endc
"}
C {sky130_fd_pr/corner.sym} 300 -400 0 0 {name=CORNER only_toplevel=false corner=tt}
C {vdd.sym} -820 -120 0 0 {name=l9 lab=VDD}
C {gnd.sym} -820 160 0 0 {name=l10 lab=gnd}
C {vsource.sym} -820 20 0 0 {name=vdd value=1.8 savecurrent=false}
C {vsource.sym} -440 20 0 0 {name=va3 value=0 savecurrent=false}
C {lab_wire.sym} -360 -60 0 0 {name=p9 sig_type=std_logic lab=val1}
C {vsource.sym} -360 20 0 0 {name=va4 value=1.8 savecurrent=false}
C {lab_wire.sym} -440 -60 0 0 {name=p10 sig_type=std_logic lab=val0}
C {lab_wire.sym} -180 -50 0 0 {name=p1 sig_type=std_logic lab=cin}
C {vdd.sym} 120 -190 0 0 {name=l1 lab=VDD}
C {gnd.sym} 310 50 0 0 {name=l2 lab=gnd}
C {lab_wire.sym} -180 -30 0 0 {name=p12 sig_type=std_logic lab=val0}
C {lab_wire.sym} -180 -10 0 0 {name=p13 sig_type=std_logic lab=val1}
C {lab_wire.sym} -180 10 0 0 {name=p14 sig_type=std_logic lab=val0}
C {lab_wire.sym} -180 30 0 0 {name=p15 sig_type=std_logic lab=val1}
C {lab_wire.sym} -180 50 0 0 {name=p16 sig_type=std_logic lab=val1}
C {lab_wire.sym} -180 70 0 0 {name=p17 sig_type=std_logic lab=val0}
C {lab_wire.sym} -180 90 0 0 {name=p18 sig_type=std_logic lab=val0}
C {lab_wire.sym} -180 110 0 0 {name=p19 sig_type=std_logic lab=val1}
C {lab_wire.sym} 240 10 0 0 {name=p20 sig_type=std_logic lab=sout0}
C {lab_wire.sym} 240 -10 0 0 {name=p21 sig_type=std_logic lab=sout1}
C {lab_wire.sym} 240 -30 0 0 {name=p22 sig_type=std_logic lab=sout4}
C {lab_wire.sym} 240 -50 0 0 {name=p23 sig_type=std_logic lab=sout5}
C {lab_wire.sym} 240 -70 0 0 {name=p24 sig_type=std_logic lab=sout2}
C {lab_wire.sym} 240 -90 0 0 {name=p25 sig_type=std_logic lab=sout6}
C {lab_wire.sym} 740 -90 0 0 {name=p26 sig_type=std_logic lab=sout7}
C {lab_wire.sym} 240 -130 0 0 {name=p27 sig_type=std_logic lab=sout3}
C {vsource.sym} -520 20 0 0 {name=va2 value=1.8 savecurrent=false}
C {lab_wire.sym} -520 -60 0 0 {name=p29 sig_type=std_logic lab=cin}
C {inv.sym} 500 -90 0 0 {name=x2}
C {inv.sym} 500 -180 0 0 {name=x3}
C {vdd.sym} 650 -200 0 0 {name=l3 lab=VDD}
C {vdd.sym} 650 -110 0 0 {name=l4 lab=VDD}
C {gnd.sym} 740 -160 0 0 {name=l5 lab=gnd}
C {gnd.sym} 750 -70 0 0 {name=l6 lab=gnd}
C {lab_wire.sym} 720 -180 0 0 {name=p30 sig_type=std_logic lab=cout}
C {lab_wire.sym} -180 130 0 0 {name=p28 sig_type=std_logic lab=val0}
C {lab_wire.sym} -180 -70 0 0 {name=p2 sig_type=std_logic lab=cin}
C {lab_wire.sym} -180 -170 0 0 {name=p7 sig_type=std_logic lab=cin}
C {lab_wire.sym} -180 -190 0 0 {name=p8 sig_type=std_logic lab=cin}
C {lab_wire.sym} -180 -90 0 0 {name=p3 sig_type=std_logic lab=val1}
C {lab_wire.sym} -180 -110 0 0 {name=p4 sig_type=std_logic lab=val1}
C {lab_wire.sym} -180 -130 0 0 {name=p5 sig_type=std_logic lab=val1}
C {lab_wire.sym} -180 -150 0 0 {name=p6 sig_type=std_logic lab=val1}
