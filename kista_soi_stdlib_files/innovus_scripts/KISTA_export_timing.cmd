extractRC
rcOut -spf output/TOP_TM_select.spf -rc_corner typ_rc
all_hold_analysis_views
all_setup_analysis_views
write_sdf -view typ_functional_mode "output/TOP_TM_select_typ_1_8V_25C.sdf"

