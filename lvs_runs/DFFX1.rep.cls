##############################################################################################################
#####  
#####                                         PVS LVS COMPARISON
#####  
#####  Version                       :   16.15-s010
#####  NVN Run Start                 :   Wed Dec 15 17:41:16 2021
#####  ERC Summary File              :   DFFX1.sum
#####  Extraction Report File        :   DFFX1.rep
#####  Comparison Report File        :   DFFX1.rep.cls
#####  Top Cell                      :   DFFX1  <vs>  DFFX1
#####  
#####  Run Result                    :   MATCH
#####  
#####  Run Summary                   :   [INFO]  ERC Results: Empty
#####                                :   [INFO]  Extraction Clean
#####  
#####  Layout Design                 :   KISTA_SOI_STDLIB DFFX1 layout
#####  Schematic File                :   /home/saul/projects/KISTA/lvs_runs/DFFX1.cdl (cdl)
#####  Rules File                    :   .technology.rul
#####  Pin Swap File                 :   DFFX1.rep.cps
#####  
#####  Extraction CPU Time           :   0h 0m 0s - (0s)
#####  Extraction Exec Time          :   0h 0m 0s - (0s)
#####  Extraction Peak Memory Usage  :   29.00MB
#####  NVN CPU Time                  :   0h 0m 0s - (0s)                 
#####  NVN Exec Time                 :   0h 0m 1s - (1s)                 
#####  NVN Peak Memory Usage         :   235.18MB
#####  LVS Total CPU Time            :   0h 0m 0s - (0s)                 
#####  LVS Total Exec Time           :   0h 0m 1s - (1s)                 
#####  LVS Total Peak Memory Usage   :   235.18MB
#####  
##############################################################################################################


##############################################################################################################
#
#                                            CELL MATCH STATISTICS                                            
#
##############################################################################################################

Cell Statistic Descriptions                  | Count
---------------------------------------------+----------
Cells matched                                |         1
Cells expanded                               |         0
Cells not run                                |         0
Cells which mismatch                         |         0
---------------------------------------------+----------
Total                                        |         1


Cell Statistic Detail                        | Count
---------------------------------------------+----------
Cells with parameter mismatches              |         0
Cells with mismatched instance subtypes      |         0
Cells that have been blackboxed              |         0


##############################################################################################################
#
#                                             CELL MATCH SUMMARY                                              
#
##############################################################################################################

          |     Initial Pins     |     Compare Pins     |            | 
Cell      |   lay    :    sch    |   lay    :    sch    | Status     | Detail
----------+----------+-----------+----------+-----------+------------+-----------
DFFX1     |       *6 :         4 |        6 :         6 | match      | 


##############################################################################################################
#
#                                                  LVS RULES                                                  
#
##############################################################################################################

Command Line LVS Rule Values
----------------------------

    layout_primary                          DFFX1 {-top_cell DFFX1}
    schematic_primary                       DFFX1 {-source_top_cell DFFX1}

LVS Rules Given in the Rules File
---------------------------------

    lvs_abort                               -softchk                               no  
    lvs_abort                               -supply_error                          no  
    lvs_abort                               -check_device_for_property_rule        no  
    layout_path                             /home/saul/projects/KISTA/lvs_runs/DFFX1.gds
    layout_format                           gdsii
    schematic_path                          /home/saul/projects/KISTA/lvs_runs/DFFX1.cdl
    schematic_format                        cdl
    lvs_netlist                             yes -allow_inconsistent_model
                                             
    lvs_ignore_ports                        no  
    lvs_find_shorts                         no  
    lvs_break_ambig_max                     32
                                             
    lvs_filter_option                       AG RC RE RG -source_layout
                                             
    lvs_expand_cell_on_error                no  
                                             
    lvs_check_property                      MN ( nmos4 ) l l -tolerance 0
    lvs_check_property                      MN ( nmos4 ) w w -tolerance 0
    lvs_check_property                      MP ( pmos4 ) l l -tolerance 0
    lvs_check_property                      MP ( pmos4 ) w w -tolerance 0
    lvs_report_file                         DFFX1.rep
    lvs_report_max                          50 -mismatched_net_limit 100 
    lvs_map_device                          M ( nmos4 ) MN ( nmos4 ) -source_layout
    lvs_map_device                          M ( pmos4 ) MP ( pmos4 ) -source_layout
    unit                                    -length u
    input_scale                             2000
    virtual_connect                         no  -colon
    virtual_connect                         yes -semicolon_as_colon
    virtual_connect                         no  -report
    virtual_connect                         -depth primary
    text_depth                              -primary
    text_depth                              -primary
                                             

Default LVS Rule Values
-----------------------

    layout_case_sensitive                   no
    // layout_cpf_file                       
    // schematic_cpf_file                    
    schematic_case_sensitive                no
    // hcell_file                            
    // hcell                                 
    // lvs_exclude_hcell                     
    // lvs_delete_cell                       
    lvs_push_devices                        yes
    lvs_push_devices_properties             no
    lvs_netlist                             yes -substrate_comment
    lvs_netlist                             yes -box_contents
    lvs_netlist                             yes -unnamed_box_pins
    lvs_netlist                             yes -properties_comment
    // lvs_write_netlist                     
    // lvs_write_netlist_reduced             
    // lvs_delete_cell_pin                   
    // lvs_black_box                         
    lvs_spice                               yes -allow_floating_pins
    lvs_spice                               yes -allow_duplicate_subcircuit_names
    lvs_spice                               no  -conditional_ldd
    lvs_spice                               no  -prefer_pins
    lvs_spice                               no  -override_globals
    lvs_spice                               no  -redefine_param
    lvs_spice                               no  -replicate_devices
    lvs_spice                               no  -replicate_devices_enhanced
    lvs_spice                               yes -slash_is_space
    lvs_spice                               yes -keep_back_slash
    lvs_spice                               no  -allow_unquoted_strings
    lvs_spice                               no  -allow_inline_parameters
    lvs_spice                               no  -calculate_mos_area
    lvs_spice                               no  -strict_wl
    lvs_spice                               no  -cull_primitive_subcircuits
    lvs_spice                               no  -ignore_option_scale
    lvs_spice                               no  -show_neg_param_warning
    lvs_spice                               no  -scale_x_parameters
    lvs_spice                               yes -strict_subckts_order
    // lvs_spice_option                      
    lvs_reverse_wl                          no
    // lvs_spice_multiplier_name             
                                             
    lvs_compare_case                        no
    lvs_cname                               no  -cell
    lvs_cname                               yes -pin
    lvs_cname                               yes -net
    lvs_cname                               no  -instance
    lvs_non_user_name                       -port "^[0-9]+$"
    lvs_non_user_name                       -net  "^[0-9]+$"
    // lvs_non_user_name                    -instance 
    lvs_out_of_range_exclude_zero           no
    // lvs_group_models                      
    lvs_strict_subtypes                     no
    // lvs_cpoint                            
    // lvs_power_name                        
    // lvs_ground_name                       
    // lvs_cell_list                         
    // lvs_device_type                       
                                             
    lvs_auto_pin_swap                       yes -swap_threshold 4000000
    lvs_swap_non_cpoint_pins                yes
    // lvs_swap_pins                         
    lvs_all_cap_pins_swappable              no
    lvs_builtin_device_pin_swap             yes
    // lvs_join_nets                         
    lvs_compare_port_names                  no
    lvs_global_sigs_are_ports               yes
    lvs_discard_pins                        no
                                             
    lvs_filter                              no  -bipolar
    lvs_filter                              no  -capacitors
    lvs_filter                              no  -diodes
    lvs_filter                              no  -mos
    lvs_filter                              no  -resistors
    // lvs_filter_device                     
                                             
    lvs_reduction_priority                  -parallel
    lvs_reduce_split_gates                  yes
    lvs_derive_logic                        yes -sram
    lvs_derive_logic                        no  -dram
    lvs_derive_logic                        no  -rom
    lvs_recognize_gates                     -all  
    // lvs_recognize_gates_tolerance         
    lvs_reduce                              yes -parallel_bipolar
    lvs_reduce                              yes -parallel_caps
    lvs_reduce                              yes -series_caps
    lvs_reduce                              yes -parallel_diodes
    lvs_reduce                              no  -series_diodes
    lvs_reduce                              yes -parallel_mos
    lvs_reduce                              no  -series_mos
    lvs_reduce                              yes -parallel_resistors
    lvs_reduce                              yes -series_resistors
    // lvs_reduce_device                     
    // lvs_reduce_do_not_merge               
                                             
    lvs_expand_on_device_climbing           no
    lvs_expand_unbalanced_cells             yes
                                             
    // lvs_check_all_properties_by_name      
    // lvs_property_map                      
    // lvs_transfer_property                 
    // lvs_report_opt                        
    lvs_report_units                        yes
    lvs_keep_data                           no
    lvs_keep_source_cells                   no
    lvs_create_match_db                     no
    unit                                    -resistance ohm
    unit                                    -capacitance pf
    lvs_verilog_bus_map_by_position         no
    lvs_verilog_keep_backslash              no
    lvs_verilog_detect_buses                no
    lvs_do_not_normalize                    no
    // lvs_generic_device                    
    virtual_connect                         no  -colon
    virtual_connect                         yes -semicolon_as_colon
    // virtual_connect                      -name 
    virtual_connect                         no -report
    virtual_connect                         no -incremental
    lvs_preserve_parameterized_cells        no
    lvs_check_color                         no
    // lvs_schematic_color_path              
    // lvs_assign_conflict_layer             
    // lvs_conflict_layer_check             
    lvs_check_color_label                   no
    // lvs_preserve_cells                    
    port                                    -depth -primary
                                             

Effective LVS Rule Values
-------------------------

    lvs_swap_non_cpoint_pins                yes -unbound_pin_threshold 10000
    lvs_filter_option                       AG RC RE RG -source
    lvs_filter_option                       AG RC RE RG -layout
    virtual_connect                         no  -report


##############################################################################################################
#
#                                               CELL COMPARISON                                               
#
##############################################################################################################

                              +------------------------------------------------+
                              |                                                |
                              |        ------->>>   MATCH   <<<-------         |
                              |                                                |
                              |               DFFX1  <vs>  DFFX1               |
                              |                                                |
                              |                                                |
                              +------------------------------------------------+

+===[DFFX1]===================================================================================================
|                                                 STATISTICS                                                  
+=============================================================================================================


                |     Original      |     Filtered      |     Reduced      
Cell            |   lay   :   sch   |   lay   :   sch   |   lay   :  sch
----------------+---------+---------+---------+---------+---------+--------
MP [4 pins]     |         :         |         :         |         :        
 MP(PMOS3)      |      14 :      14 |      14 :      14 |      14 :      14
MN [4 pins]     |         :         |         :         |         :        
 MN(NMOS3)      |      14 :      14 |      14 :      14 |      14 :      14
----------------+---------+---------+---------+---------+---------+--------
Total           |      28 :      28 |      28 :      28 |      28 :      28
================+=========+=========+=========+=========+=========+========
Pins            |         :         |         :         |       6 :       6
Nets            |         :         |         :         |      13 :      13
================+=========+=========+=========+=========+=========+========

+===[DFFX1]===================================================================================================
|                                           INITIAL CORRESPONDENCES                                           
+=============================================================================================================

Type     | Name
---------+------------------------
Pin      | CK D Q QN VDD! VSS!


##############################################################################################################
#
#                                                END OF REPORT                                                
#
##############################################################################################################

