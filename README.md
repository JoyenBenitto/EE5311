# EE5311
Collection of all my code and tutorials for the course EE5311


# Setup

Add the below snippet to `~/.xschem/xschemrc` to your working directory

```bash
set netlist_dir ./netlist/

if {![file isdirectory $netlist_dir]} {
    file mkdir $netlist_dir
}
```
