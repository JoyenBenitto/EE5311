proc place_unit {devtype instname cx cy} {
    if {$devtype == "n"} {
        set hw 0.365
        set hh 0.650
    } else {
        set hw 0.545
        set hh 0.710
    }
    set llx [expr {$cx - $hw}]
    set lly [expr {$cy - $hh}]
    box position ${llx}um ${lly}um
    if {$devtype == "n"} {
        magic::gencell sky130::sky130_fd_pr__nfet_01v8 $instname guard 0 full_metal 0
    } else {
        magic::gencell sky130::sky130_fd_pr__pfet_01v8 $instname guard 0 full_metal 0
    }
    select cell $instname
    puts "placed $instname -> [box values]"
}

load sum -quiet
box 0um 0um 0um 0um

set pitch_p 1.25
set x0 0.0
set gap 0.40
set y_n 0.65
set y_p [expr {$y_n + 0.65 + $gap + 0.71}]

array set colx {}
for {set i 0} {$i < 7} {incr i} {
    set colx([expr {$i+1}]) [expr {$x0 + $i * $pitch_p}]
}

place_unit p Pa    $colx(1) $y_p
place_unit p Pa2   $colx(2) $y_p
place_unit p Pb    $colx(3) $y_p
place_unit p Pb2   $colx(4) $y_p
place_unit p Pcin  $colx(5) $y_p
place_unit p Pcin2 $colx(6) $y_p
place_unit p Pcbar $colx(7) $y_p

place_unit n Na    $colx(1) $y_n
place_unit n Na2   $colx(2) $y_n
place_unit n Nb    $colx(3) $y_n
place_unit n Nb2   $colx(4) $y_n
place_unit n Ncin  $colx(5) $y_n
place_unit n Ncin2 $colx(6) $y_n
place_unit n Ncbar $colx(7) $y_n

puts "Placed 14 devices. y_n=$y_n y_p=$y_p"
save sum
