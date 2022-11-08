setFillerMode -add_fillers_with_drc false
addFiller -prefix FILLCAP -cell DECAP4 DECAP2 DECAP1
addFiller -prefix FILL -cell FILL4 FILL2 FILL1
pdi report_design
