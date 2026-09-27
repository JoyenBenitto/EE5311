#=====================================================================
# sum cell: full build - placement + channel-routed wiring
#=====================================================================
proc place_unit {devtype instname cx cy} {
    if {$devtype == "n"} { set hw 0.365; set hh 0.650 } else { set hw 0.545; set hh 0.710 }
    box position [expr {$cx-$hw}]um [expr {$cy-$hh}]um
    if {$devtype == "n"} {
        magic::gencell sky130::sky130_fd_pr__nfet_01v8 $instname guard 0 full_metal 0
    } else {
        magic::gencell sky130::sky130_fd_pr__pfet_01v8 $instname guard 0 full_metal 0
    }
    select cell $instname
}

# paint a rect given in microns (llx lly urx ury) on the named layer
proc paintrect {layer llx lly urx ury} {
    box position ${llx}um ${lly}um
    box size [expr {$urx-$llx}]um [expr {$ury-$lly}]um
    paint $layer
}

# vertical metal1 stub from (px, y_from) to (px, y_to), width w
proc vstub {px y_from y_to {w 0.17}} {
    set y0 [expr {min($y_from,$y_to)}]
    set y1 [expr {max($y_from,$y_to)}]
    paintrect metal1 [expr {$px-$w/2.0}] $y0 [expr {$px+$w/2.0}] $y1
}

# via patch connecting metal1 (already there) down to locali at (px,py)
proc via_m1_li1 {px py {s 0.34}} {
    paintrect locali [expr {$px-$s/2.0}] [expr {$py-$s/2.0}] [expr {$px+$s/2.0}] [expr {$py+$s/2.0}]
    paintrect viali   [expr {$px-0.17/2.0}] [expr {$py-0.17/2.0}] [expr {$px+0.17/2.0}] [expr {$py+0.17/2.0}]
    paintrect metal1  [expr {$px-$s/2.0}] [expr {$py-$s/2.0}] [expr {$px+$s/2.0}] [expr {$py+$s/2.0}]
}

# a li1 lane spanning the full cell width at [y0,y1]
proc lane {y0 y1 xmin xmax} {
    paintrect locali $xmin $y0 $xmax $y1
}

# connect a device pin (px,py) up/down to a lane [y0,y1] with stub+via
proc connect {px py lane_y0 lane_y1} {
    set lane_mid [expr {($lane_y0+$lane_y1)/2.0}]
    vstub $px $py $lane_mid
    via_m1_li1 $px $lane_mid
}

load sum -quiet
box 0um 0um 0um 0um

#---------------------------------------------------------------
# Floorplan (Y bands, bottom to top), microns
#---------------------------------------------------------------
set gnd_rail_y0 0.0
set gnd_rail_y1 0.3
set nmos_row_y0 0.4
set nmos_row_y1 [expr {$nmos_row_y0+1.30}]
set y_n [expr {($nmos_row_y0+$nmos_row_y1)/2.0}]

set lane_net4_y0 1.80; set lane_net4_y1 2.10
set lane_net5_y0 2.20; set lane_net5_y1 2.50
set lane_net6_y0 2.60; set lane_net6_y1 2.90

set lane_a_y0      3.00; set lane_a_y1      3.30
set lane_b_y0      3.40; set lane_b_y1      3.70
set lane_cin_y0    3.80; set lane_cin_y1    4.10
set lane_coutbar_y0 4.20; set lane_coutbar_y1 4.50
set lane_sout_y0   4.60; set lane_sout_y1   4.90

set lane_net1_y0 5.00; set lane_net1_y1 5.30
set lane_net3_y0 5.40; set lane_net3_y1 5.70
set lane_net2_y0 5.80; set lane_net2_y1 6.10

set pmos_row_y0 6.20
set pmos_row_y1 [expr {$pmos_row_y0+1.42}]
set y_p [expr {($pmos_row_y0+$pmos_row_y1)/2.0}]

set vdd_rail_y0 7.72
set vdd_rail_y1 8.02

set pitch 1.25
set x0 0.0
array set colx {}
for {set i 0} {$i < 7} {incr i} { set colx([expr {$i+1}]) [expr {$x0 + $i*$pitch}] }

set xmin -0.7
set xmax [expr {$colx(7)+0.7}]

puts "Placing devices..."
place_unit p Pa    $colx(1) $y_p
place_unit p Pb    $colx(2) $y_p
place_unit p Pcin  $colx(3) $y_p
place_unit p Pcbar $colx(4) $y_p
place_unit p Pa2   $colx(5) $y_p
place_unit p Pb2   $colx(6) $y_p
place_unit p Pcin2 $colx(7) $y_p

place_unit n Na    $colx(1) $y_n
place_unit n Nb    $colx(2) $y_n
place_unit n Ncin  $colx(3) $y_n
place_unit n Ncbar $colx(4) $y_n
place_unit n Na2   $colx(5) $y_n
place_unit n Nb2   $colx(6) $y_n
place_unit n Ncin2 $colx(7) $y_n

puts "Placed 14 devices."
save sum
puts "Saved checkpoint."

#---------------------------------------------------------------
# Pin offsets (relative to device center), microns
#---------------------------------------------------------------
# both types: D=(-0.22,0) S=(+0.22,0)
# nfet gate: inner(toward gap)=top=+0.485   outer(toward GND)=bottom=-0.485
# pfet gate: inner(toward gap)=bottom=-0.53 outer(toward VDD)=top=+0.53

proc pinD {cx cy} { return [list [expr {$cx-0.22}] $cy] }
proc pinS {cx cy} { return [list [expr {$cx+0.22}] $cy] }
proc pinG_n_inner {cx cy} { return [list $cx [expr {$cy+0.485}]] }
proc pinG_n_outer {cx cy} { return [list $cx [expr {$cy-0.485}]] }
proc pinG_p_inner {cx cy} { return [list $cx [expr {$cy-0.53}]] }
proc pinG_p_outer {cx cy} { return [list $cx [expr {$cy+0.53}]] }

#---------------------------------------------------------------
# Draw li1 lanes (full width bars) for every net that needs one
#---------------------------------------------------------------
lane $lane_net4_y0 $lane_net4_y1 $xmin $xmax
lane $lane_net5_y0 $lane_net5_y1 $xmin $xmax
lane $lane_net6_y0 $lane_net6_y1 $xmin $xmax
lane $lane_a_y0 $lane_a_y1 $xmin $xmax
lane $lane_b_y0 $lane_b_y1 $xmin $xmax
lane $lane_cin_y0 $lane_cin_y1 $xmin $xmax
lane $lane_coutbar_y0 $lane_coutbar_y1 $xmin $xmax
lane $lane_sout_y0 $lane_sout_y1 $xmin $xmax
lane $lane_net1_y0 $lane_net1_y1 $xmin $xmax
lane $lane_net3_y0 $lane_net3_y1 $xmin $xmax
lane $lane_net2_y0 $lane_net2_y1 $xmin $xmax
puts "Lanes painted."

#---------------------------------------------------------------
# Power rails (metal1)
#---------------------------------------------------------------
paintrect metal1 $xmin $gnd_rail_y0 $xmax $gnd_rail_y1
paintrect metal1 $xmin $vdd_rail_y0 $xmax $vdd_rail_y1
puts "Rails painted."

#---------------------------------------------------------------
# Connect PMOS row pins
#---------------------------------------------------------------
foreach {inst col gsig dnet snet} {
    Pa    1 a     VDD  net1
    Pb    2 b     VDD  net1
    Pcin  3 cin   VDD  net1
    Pcbar 4 coutbar net1 sout
    Pa2   5 a     VDD  net3
    Pb2   6 b     net3 net2
    Pcin2 7 cin   net2 sout
} {
    set cx $colx($col)
    set cy $y_p
    # D pin
    lassign [pinD $cx $cy] px py
    if {$dnet == "VDD"} { connect $px $py $vdd_rail_y0 $vdd_rail_y1 } \
    elseif {$dnet == "net1"} { connect $px $py $lane_net1_y0 $lane_net1_y1 } \
    elseif {$dnet == "net3"} { connect $px $py $lane_net3_y0 $lane_net3_y1 } \
    elseif {$dnet == "net2"} { connect $px $py $lane_net2_y0 $lane_net2_y1 }
    # S pin
    lassign [pinS $cx $cy] px py
    if {$snet == "net1"} { connect $px $py $lane_net1_y0 $lane_net1_y1 } \
    elseif {$snet == "net3"} { connect $px $py $lane_net3_y0 $lane_net3_y1 } \
    elseif {$snet == "net2"} { connect $px $py $lane_net2_y0 $lane_net2_y1 } \
    elseif {$snet == "sout"} { connect $px $py $lane_sout_y0 $lane_sout_y1 }
    # G pin (inner, toward gap -> connects to gap-channel lane for gsig)
    lassign [pinG_p_inner $cx $cy] px py
    if {$gsig == "a"} { connect $px $py $lane_a_y0 $lane_a_y1 } \
    elseif {$gsig == "b"} { connect $px $py $lane_b_y0 $lane_b_y1 } \
    elseif {$gsig == "cin"} { connect $px $py $lane_cin_y0 $lane_cin_y1 } \
    elseif {$gsig == "coutbar"} { connect $px $py $lane_coutbar_y0 $lane_coutbar_y1 }
}
puts "PMOS wired."

#---------------------------------------------------------------
# Connect NMOS row pins (mirror: VDD->GND, net1/3/2 -> net4/5/6)
#---------------------------------------------------------------
foreach {inst col gsig dnet snet} {
    Na    1 a     GND  net4
    Nb    2 b     GND  net4
    Ncin  3 cin   GND  net4
    Ncbar 4 coutbar net4 sout
    Na2   5 a     GND  net5
    Nb2   6 b     net5 net6
    Ncin2 7 cin   net6 sout
} {
    set cx $colx($col)
    set cy $y_n
    lassign [pinD $cx $cy] px py
    if {$dnet == "GND"} { connect $px $py $gnd_rail_y0 $gnd_rail_y1 } \
    elseif {$dnet == "net4"} { connect $px $py $lane_net4_y0 $lane_net4_y1 } \
    elseif {$dnet == "net5"} { connect $px $py $lane_net5_y0 $lane_net5_y1 } \
    elseif {$dnet == "net6"} { connect $px $py $lane_net6_y0 $lane_net6_y1 }
    lassign [pinS $cx $cy] px py
    if {$snet == "net4"} { connect $px $py $lane_net4_y0 $lane_net4_y1 } \
    elseif {$snet == "net5"} { connect $px $py $lane_net5_y0 $lane_net5_y1 } \
    elseif {$snet == "net6"} { connect $px $py $lane_net6_y0 $lane_net6_y1 } \
    elseif {$snet == "sout"} { connect $px $py $lane_sout_y0 $lane_sout_y1 }
    lassign [pinG_n_inner $cx $cy] px py
    if {$gsig == "a"} { connect $px $py $lane_a_y0 $lane_a_y1 } \
    elseif {$gsig == "b"} { connect $px $py $lane_b_y0 $lane_b_y1 } \
    elseif {$gsig == "cin"} { connect $px $py $lane_cin_y0 $lane_cin_y1 } \
    elseif {$gsig == "coutbar"} { connect $px $py $lane_coutbar_y0 $lane_coutbar_y1 }
}
puts "NMOS wired."

#---------------------------------------------------------------
# External pins: label + port on each lane / rail
#---------------------------------------------------------------
proc extpin {name layer x y} {
    box position ${x}um ${y}um
    box size 0.34um 0.34um
    label $name FreeSans 0 0 0 0 c $layer
    port make
}
extpin VDD metal1 [expr {($xmin+$xmax)/2.0}] [expr {($vdd_rail_y0+$vdd_rail_y1)/2.0}]
extpin GND metal1 [expr {($xmin+$xmax)/2.0}] [expr {($gnd_rail_y0+$gnd_rail_y1)/2.0}]
extpin a       locali $xmin [expr {($lane_a_y0+$lane_a_y1)/2.0}]
extpin b       locali $xmin [expr {($lane_b_y0+$lane_b_y1)/2.0}]
extpin cin     locali $xmin [expr {($lane_cin_y0+$lane_cin_y1)/2.0}]
extpin coutbar locali $xmin [expr {($lane_coutbar_y0+$lane_coutbar_y1)/2.0}]
extpin sout    locali $xmax [expr {($lane_sout_y0+$lane_sout_y1)/2.0}]
puts "Pins placed."

save sum
puts "DONE - saved sum.mag"

#---------------------------------------------------------------
# DRC + extraction + GDS write, all in this same session
#---------------------------------------------------------------
select top cell
drc check
drc catchup
puts "==== DRC RESULTS ===="
puts [drc listall why]
set drc_count [llength [drc listall why]]
puts "DRC entries: $drc_count"

flatten sum_flat
load sum_flat
extract all
ext2spice lvs
ext2spice cthresh infinite
ext2spice -o sum_extracted.spice
puts "Extraction + ext2spice done."

load sum
gds write sum.gds
puts "GDS written."
quit -noprompt
