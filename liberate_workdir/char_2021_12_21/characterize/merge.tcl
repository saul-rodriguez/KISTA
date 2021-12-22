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
set_operating_condition -voltage 1.5 -temp 25

#merge_library -filename ${rundir}/LIBRARY/merged_ccs.lib ${rundir}/LIBRARY/userdata.lib ${rundir}/LIBRARY/ship_ccs.lib 
#merge_library -filename ${rundir}/LIBRARY/merged_ecsm.lib ${rundir}/LIBRARY/ship_ecsm.lib ${rundir}/LIBRARY/userdata.lib
merge_library -filename ${rundir}/LIBRARY/merged_ecsm.lib ${rundir}/LIBRARY/userdata.lib ${rundir}/LIBRARY/ship_ecsm.lib 



## Generate ascii datatsheet ###
read_library ${rundir}/LIBRARY/merged_ccs.lib
write_datasheet -format html -dir ${rundir}/DATASHEET "Ship Libs"
