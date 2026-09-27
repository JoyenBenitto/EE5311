gds read carry.gds
load carry
select top cell
drc check
drc catchup
set why [drc listall why]
if {[llength $why] == 0} {
    puts "DRC-CLEAN"
} else {
    puts "DRC VIOLATIONS FOUND:"
    puts $why
}
quit -noprompt
