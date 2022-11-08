create_ccopt_clock_tree_spec -file ccopt_native.spec
source ccopt_native.spec 
set_ccopt_mode -cts_inverter_cells { INVX1 }
set_ccopt_mode -cts_buffer_cells { BUFX2 }
ccopt_design -cts
timeDesign -postCTS
timeDesign -postCTS -hold

