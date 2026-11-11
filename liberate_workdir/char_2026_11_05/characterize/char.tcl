# Liberate Characterization Tcl File 
# MODS by Tom Briggs (C) 2018

# Set the run directory.  Here we use PWD, but in a distributed 
# environment, it is recommended to directly specify the full path 
# instead of using "PWD"
set rundir $env(PWD) 

# Create the directories Liberate will write to.
exec mkdir -p ${rundir}/LDB
exec mkdir -p ${rundir}/LIBRARY
exec mkdir -p ${rundir}/DATASHEET

### Define temperature and default voltage ###
set_operating_condition -voltage 1.8 -temp 25

## ----------------------------------------
## This is to support the AMI06 process file
set_var extsim_model_include ${rundir}/MODELS/include_tt.scs
#set_var extsim_model_include ${rundir}/MODELS/include_ff.scs
#set_var extsim_model_include ${rundir}/MODELS/include_ss.scs

# d g s b
define_leafcell -type nmos -pin_position { 0 1 2 3 } \
    { nch NCH }

define_leafcell -type pmos -pin_position { 0 1 2 3 } \
    { pch PCH }
## ----------------------------------------

## Load template information for each cell ##
##TODO THIS MUST BE EDITED FOR THE LIST OF CELLS TO PROCESS
source ${rundir}/TEMPLATE/template.tcl

## Load Spice models and subckts ##
#set spicefiles $rundir/MODELS/include_SS.sp
foreach cell $cells {
    lappend spicefiles ${rundir}/NETLIST/${cell}.scs
}

read_spice -format spectre ${spicefiles}

#read_spice -format spectre ${rundir}/NETLIST/INVX1.scs 


## Characterize the library for NLDM (default), CCS and ECSM timing.
char_library -ccs -ecsm -cells ${cells} 

## Save characterization database for post-processing ##
write_ldb ${rundir}/LDB/ship_cells.ldb

## Generate a .lib with ccs, ecsm ###
write_library -overwrite -ccs  ${rundir}/LIBRARY/ship_ccs.lib
write_library -overwrite -ecsm ${rundir}/LIBRARY/ship_ecsm.lib

## Generate ascii datatsheet ###
write_datasheet -format html -dir ${rundir}/DATASHEET "Ship Libs"
