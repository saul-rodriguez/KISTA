
# Liberate Template Example Tcl File - Sept 2008

set_var slew_lower_rise 0.3
set_var slew_upper_rise 0.7
set_var slew_lower_fall 0.3
set_var slew_upper_fall 0.7

set_var measure_slew_lower_rise 0.3
set_var measure_slew_upper_rise 0.7
set_var measure_slew_lower_fall 0.3
set_var measure_slew_upper_fall 0.7

# Set the maximum output transition time allowed (in seconds)
# 1e-9 is in ns
set_var max_transition 20e-09

# enter a space separated list of cell names to process
set cells { BUFX2 DFFX1 INVX1 NAND2X1 NOR2X1 }

define_template -type delay \
-index_1        {0.250 0.500 0.750 1.250 1.500} \
-index_2        {0.0150 0.0500 0.1500 0.3000 0.6000} \
delay_template_5x5

define_template -type power \
-index_1        {0.250 0.500 0.750 1.250 1.500} \
-index_2        {0.0150 0.0500 0.1500 0.3000 0.6000} \
power_template_5x5

define_template -type constraint \
-index_1  {0.250  0.750 1.500} \
-index_2  {0.250  0.750 1.500} \
constraint_template_3x3

if {[ALAPI_active_cell "INVX1"]} {
define_cell \
-input { A } -output { Y } -pinlist { A Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
INVX1

}


if {[ALAPI_active_cell "NOR2X1"]} {
define_cell \
-input { A B } -output { Y } -pinlist { A B Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
NOR2X1
}


if {[ALAPI_active_cell "BUFX2"]} {
define_cell \
-input { A } -output { Y } -pinlist { A Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
BUFX2

}


if {[ALAPI_active_cell "NAND2X1"]} {
define_cell \
-input { A B } -output { Y } -pinlist { A B Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
NAND2X1

}


if {[ALAPI_active_cell "DFFX1"]} {
define_cell \
-input { D } -output { Q QN } -clock { CK } -pinlist { CK D Q QN } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
DFFX1

}



