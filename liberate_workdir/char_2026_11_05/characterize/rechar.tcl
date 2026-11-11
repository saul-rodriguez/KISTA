# Liberate recharacterization example.

# Set the run directory.  Here we use PWD, but in a distributed 
# environment, it is recommended to directly specify the full path 
# instead of using "PWD".
set rundir $env(PWD) 

# Create the directories Liberate will write to.
exec mkdir -p ${rundir}/LDB
exec mkdir -p ${rundir}/LIBRARY
exec mkdir -p ${rundir}/DATASHEET

### Define temperature and default voltage ###
set_operating_condition -voltage 1.5 -temp 125

## Load template information for each cell ##
source ${rundir}/TEMPLATE/template_rechar_example.tcl

## Load Spice models and subckts ##
set spicefiles $rundir/MODELS/include_SS.sp
foreach cell $cells {
    lappend spicefiles $rundir/NETLIST/${cell}.sp
}
read_spice $spicefiles

## Characterize the library for NLDM (default), CCS and ECSM timing.
char_library -ccs -ecsm -cells ${cells} 

## Save characterization database for post-processing ##
write_ldb ${rundir}/LDB/example.ldb

## Generate a .lib with ccs, ecsm ###
write_library -overwrite -ccs  ${rundir}/LIBRARY/example_ccs_rechar.lib
write_library -overwrite -ecsm ${rundir}/LIBRARY/example_ecsm_rechar.lib

