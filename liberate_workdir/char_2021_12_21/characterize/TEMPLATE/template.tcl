
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
set_var max_transition 5e-09

# enter a space separated list of cell names to process
set cells { AOI21X1 BUFX2 DFFSRX1 DFFX1 INVX1 MX2X1 NAND2X1 NAND3X1 NOR2X1 NOR3X1 OAI21X1 TIEHI TIELO XOR2X1 }

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

if {[ALAPI_active_cell "AOI21X1"]} {
define_cell \
-input { A0 A1 B0 } -output { Y } -pinlist { A0 Y B0 A1 } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
AOI21X1
}

if {[ALAPI_active_cell "BUFX2"]} {
define_cell \
-input { A } -output { Y } -pinlist { A Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
BUFX2
}

if {[ALAPI_active_cell "DFFSRX1"]} {
define_cell \
-input { D } -async { RN SN } -output { Q QN } -clock { CK } -pinlist { CK D RN SN Q QN } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
DFFSRX1
}

if {[ALAPI_active_cell "DFFX1"]} {
define_cell \
-input { D } -output { Q QN } -clock { CK } -pinlist { CK D Q QN } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
DFFX1
}

if {[ALAPI_active_cell "INVX1"]} {
define_cell \
-input { A } -output { Y } -pinlist { A Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
INVX1
}

if {[ALAPI_active_cell "MX2X1"]} {
define_cell \
-input { A B S0 } -output { Y } -pinlist { A B S0 Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
MX2X1
}

if {[ALAPI_active_cell "NAND2X1"]} {
define_cell \
-input { A B } -output { Y } -pinlist { A B Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
NAND2X1
}

if {[ALAPI_active_cell "NAND3X1"]} {
define_cell \
-input { A B C } -output { Y } -pinlist { Y A C B } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
NAND3X1
}


if {[ALAPI_active_cell "NOR2X1"]} {
define_cell \
-input { A B } -output { Y } -pinlist { A B Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
NOR2X1
}

if {[ALAPI_active_cell "NOR3X1"]} {
define_cell \
-input { A B C } -output { Y } -pinlist { A B C Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
NOR3X1
}

if {[ALAPI_active_cell "OAI21X1"]} {
define_cell \
-input { A0 A1 B0 } -output { Y } -pinlist { B0 Y A0 A1 } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
OAI21X1
}

if {[ALAPI_active_cell "TIEHI"]} {
define_cell \
-output { Y } -pinlist { Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
TIEHI
}

if {[ALAPI_active_cell "TIELO"]} {
define_cell \
-output { Y } -pinlist { Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
TIELO
}

if {[ALAPI_active_cell "XOR2X1"]} {
define_cell \
-input { A B } -output { Y } -pinlist { A B Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
XOR2X1
}










