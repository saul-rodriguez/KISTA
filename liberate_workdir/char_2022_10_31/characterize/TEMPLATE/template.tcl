
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
set cells { ADDFX1 ADDHX1 AND2X1 AND3X1 AND4X1 AO21X1 AOI21X1 BUFX16 BUFX2 BUFX27 BUFX3 BUFX32 BUFX4 BUFX8 BUFX9 DFFRX1 DFFSRX1 DFFSX1 DFFX1 INVX1 INVX2 INVX3 INVX4 MX2X1 MX4X1 NAND2X1 NAND2X2 NAND2X3 NAND3X1 NAND4X1 NOR2X1 NOR2X2 NOR2X3 NOR3X1 NOR4X1 OA21X1 OAI21X1 OR2X1 OR3X1 OR4X1 TIEHI TIELO XNOR2X1 XOR2X1 }

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

if {[ALAPI_active_cell "ADDFX1"]} {
define_cell \
-input { A B CIN } -output { SUM COUT } -pinlist { A B CIN SUM COUT } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
ADDFX1
}

if {[ALAPI_active_cell "ADDHX1"]} {
define_cell \
-input { A B } -output { SUM COUT } -pinlist { A B SUM COUT } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
ADDHX1
}

if {[ALAPI_active_cell "AND2X1"]} {
define_cell \
-input { A B } -output { Y } -pinlist { A B Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
AND2X1
}

if {[ALAPI_active_cell "AND3X1"]} {
define_cell \
-input { A B C } -output { Y } -pinlist { A B C Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
AND3X1
}

if {[ALAPI_active_cell "AND4X1"]} {
define_cell \
-input { A B C D } -output { Y } -pinlist { A B C D Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
AND4X1
}

if {[ALAPI_active_cell "AOI21X1"]} {
define_cell \
-input { A B C } -output { Y } -pinlist { A B C Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
AOI21X1
}

if {[ALAPI_active_cell "AO21X1"]} {
define_cell \
-input { A B C } -output { Y } -pinlist { A B C Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
AO21X1
}

if {[ALAPI_active_cell "BUFX16"]} {
define_cell \
-input { A } -output { Y } -pinlist { A Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
BUFX16
}

if {[ALAPI_active_cell "BUFX2"]} {
define_cell \
-input { A } -output { Y } -pinlist { A Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
BUFX2
}

if {[ALAPI_active_cell "BUFX27"]} {
define_cell \
-input { A } -output { Y } -pinlist { A Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
BUFX27
}

if {[ALAPI_active_cell "BUFX3"]} {
define_cell \
-input { A } -output { Y } -pinlist { A Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
BUFX3
}

if {[ALAPI_active_cell "BUFX32"]} {
define_cell \
-input { A } -output { Y } -pinlist { A Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
BUFX32
}

if {[ALAPI_active_cell "BUFX4"]} {
define_cell \
-input { A } -output { Y } -pinlist { A Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
BUFX4
}

if {[ALAPI_active_cell "BUFX8"]} {
define_cell \
-input { A } -output { Y } -pinlist { A Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
BUFX8
}

if {[ALAPI_active_cell "BUFX9"]} {
define_cell \
-input { A } -output { Y } -pinlist { A Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
BUFX9
}

if {[ALAPI_active_cell "DFFRX1"]} {
define_cell \
-input { D } -async { RN } -output { Q QN } -clock { CK } -pinlist { CK D RN Q QN } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
DFFRX1
}

if {[ALAPI_active_cell "DFFSRX1"]} {
define_cell \
-input { D } -async { RN SN } -output { Q QN } -clock { CK } -pinlist { CK D RN SN Q QN } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
DFFSRX1
}

if {[ALAPI_active_cell "DFFSX1"]} {
define_cell \
-input { D } -async { SN } -output { Q QN } -clock { CK } -pinlist { CK D SN Q QN } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
DFFSX1
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

if {[ALAPI_active_cell "INVX2"]} {
define_cell \
-input { A } -output { Y } -pinlist { A Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
INVX2
}

if {[ALAPI_active_cell "INVX3"]} {
define_cell \
-input { A } -output { Y } -pinlist { A Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
INVX3
}

if {[ALAPI_active_cell "INVX4"]} {
define_cell \
-input { A } -output { Y } -pinlist { A Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
INVX4
}

if {[ALAPI_active_cell "MX2X1"]} {
define_cell \
-input { A B S0 } -output { Y } -pinlist { A B S0 Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
MX2X1
}

if {[ALAPI_active_cell "MX4X1"]} {
define_cell \
-input { A B C D S0 S1 } -output { Y } -pinlist { A B C D S0 S1 Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
MX4X1
}

if {[ALAPI_active_cell "NAND2X1"]} {
define_cell \
-input { A B } -output { Y } -pinlist { A B Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
NAND2X1
}

if {[ALAPI_active_cell "NAND2X2"]} {
define_cell \
-input { A B } -output { Y } -pinlist { A B Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
NAND2X2
}

if {[ALAPI_active_cell "NAND2X3"]} {
define_cell \
-input { A B } -output { Y } -pinlist { A B Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
NAND2X3
}

if {[ALAPI_active_cell "NAND3X1"]} {
define_cell \
-input { A B C } -output { Y } -pinlist { Y A C B } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
NAND3X1
}

if {[ALAPI_active_cell "NAND4X1"]} {
define_cell \
-input { A B C D } -output { Y } -pinlist { Y A C B D } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
NAND4X1
}

if {[ALAPI_active_cell "NOR2X1"]} {
define_cell \
-input { A B } -output { Y } -pinlist { A B Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
NOR2X1
}

if {[ALAPI_active_cell "NOR2X2"]} {
define_cell \
-input { A B } -output { Y } -pinlist { A B Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
NOR2X2
}

if {[ALAPI_active_cell "NOR2X3"]} {
define_cell \
-input { A B } -output { Y } -pinlist { A B Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
NOR2X3
}

if {[ALAPI_active_cell "NOR3X1"]} {
define_cell \
-input { A B C } -output { Y } -pinlist { A B C Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
NOR3X1
}

if {[ALAPI_active_cell "NOR4X1"]} {
define_cell \
-input { A B C D} -output { Y } -pinlist { A B C D Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
NOR4X1
}

if {[ALAPI_active_cell "OAI21X1"]} {
define_cell \
-input { A B C } -output { Y } -pinlist { A B C Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
OAI21X1
}

if {[ALAPI_active_cell "OA21X1"]} {
define_cell \
-input { A B C } -output { Y } -pinlist { A B C Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
OA21X1
}

if {[ALAPI_active_cell "OR2X1"]} {
define_cell \
-input { A B } -output { Y } -pinlist { A B Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
OR2X1
}

if {[ALAPI_active_cell "OR3X1"]} {
define_cell \
-input { A B C } -output { Y } -pinlist { A B C Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
OR3X1
}

if {[ALAPI_active_cell "OR4X1"]} {
define_cell \
-input { A B C D } -output { Y } -pinlist { A B C D Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
OR4X1
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

if {[ALAPI_active_cell "XNOR2X1"]} {
define_cell \
-input { A B } -output { Y } -pinlist { A B Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
XNOR2X1
}

if {[ALAPI_active_cell "XOR2X1"]} {
define_cell \
-input { A B } -output { Y } -pinlist { A B Y } \
-constraint  constraint_template_3x3    \
-delay       delay_template_5x5 \
-power       power_template_5x5 \
XOR2X1
}









