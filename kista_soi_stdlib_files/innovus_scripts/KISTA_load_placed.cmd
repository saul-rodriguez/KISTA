#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu Jan  6 06:26:49 2022                
#                                                     
#######################################################

#@(#)CDS: Innovus v18.16-s077_1 (64bit) 11/08/2019 08:48 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 18.16-s077_1 NR191106-2227/18_16-UB (database version 2.30, 475.7.1) {superthreading v1.47}
#@(#)CDS: AAE 18.16-s014 (64bit) 11/08/2019 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 18.16-s015_1 () Nov  7 2019 23:40:47 ( )
#@(#)CDS: SYNTECH 18.16-s012_1 () Oct 25 2019 10:46:42 ( )
#@(#)CDS: CPE v18.16-s043
#@(#)CDS: IQuantus/TQuantus 18.1.2-s824 (64bit) Thu Feb 28 20:18:51 PST 2019 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
win
set init_gnd_net VSS!
set init_lef_file {../virtuoso/kista_soi_stdlib_files/lef/kista_soi_stdlib_tech.lef ../virtuoso/kista_soi_stdlib_files/lef/kista_soi_stdlib_macro.lef}
set init_verilog ../genus/genus_output/SPI_Slave_synth.v
set init_mmmc_file MMMC_KISTA_only_typical.view
set init_pwr_net VDD!
init_design
setDesignMode -process 250
clearGlobalNets
globalNetConnect VSS! -type pgpin -pin VSS! -instanceBasename * -hierarchicalInstance {}
globalNetConnect VDD! -type pgpin -pin VDD! -instanceBasename * -hierarchicalInstance {}
saveDesign SPI_Slave_loaded
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CoreSite -r 1.0 0.6 30.0 30.0 30.0 30.0
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site CoreSite -r 0.5 0.598328 32.0 32.0 32.0 32.0
uiSetTool select
getIoFlowFlag
fit
saveDesign SPI_Slave_loaded_floorplan
fit
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal3 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD! VSS!} -type core_rings -follow core -layer {top Metal1 bottom Metal1 left Metal2 right Metal2} -width {top 10 bottom 10 left 10 right 10} -spacing {top 4 bottom 4 left 4 right 4} -offset {top 4 bottom 4 left 4 right 4} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal3(3) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal3(3) } -nets { VDD! VSS! } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal3(3) }
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_implant -quiet
get_verify_drc_mode -check_implant_across_rows -quiet
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_implant true -check_implant_across_rows false -check_ndr_spacing false -check_only default -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -use_min_spacing_on_block_obs auto -report SPI_Slave.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
saveDesign SPI_Slave_loaded_floorplan_power
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 3 -spreadType start -spacing 8 -start 0.0 0.0 -pin {SPI_Clk SPI_CS SPI_MISO SPI_MOSI}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 2.0 -pinDepth 2.0 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 3 -spreadType center -spacing 8.0 -pin {SPI_Clk SPI_CS SPI_MISO SPI_MOSI}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 2.0 -pinDepth 2.0 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 3 -spreadType center -spacing 12.0 -pin {SPI_Clk SPI_CS SPI_MISO SPI_MOSI}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 2.0 -pinDepth 2.0 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 3 -spreadType center -spacing 12.0 -pin {SPI_Clk SPI_CS SPI_MISO SPI_MOSI}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 3 -spreadType center -spacing 12 -pin {clk resetn {Rx_Byte[0]} {Rx_Byte[1]} {Rx_Byte[2]} {Rx_Byte[3]} {Rx_Byte[4]} {Rx_Byte[5]} {Rx_Byte[6]} {Rx_Byte[7]} Rx_DV {Tx_Byte[0]} {Tx_Byte[1]} {Tx_Byte[2]} {Tx_Byte[3]} {Tx_Byte[4]} {Tx_Byte[5]} {Tx_Byte[6]} {Tx_Byte[7]} Tx_DV}
setPinAssignMode -pinEditInBatch false
saveDesign SPI_Slave_loaded_floorplan_power_pin
ccopt_internal_messages -off
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -droutePostRouteWidenWireRule LEFSpecialRouteSpec
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {BUFX2 INVX1} -maxAllowedDelay 1
um::enable_metric -on
place_opt_design
report_timing
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix SPI_Slave_preCTS -outDir timingReports
saveDesign SPI_Slave_loaded_floorplan_power_pin_placed
