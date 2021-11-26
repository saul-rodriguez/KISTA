**** Altos spice deck for characterization release 17.1.2.229
***           pin opin_dir related related_dir timing_type   table_type    when     
*** Info_arc: -   -        -       -           combinational leakage_power (!A*B*!Y)
** NET-MAP BEGIN for NOR2X1_0
** NET-MAP END

* begin of instance section for NOR2X1_0
XM2_0 Y B VSS VSS nch l=1e-06 w=2e-06 wf=2 
XM3_0 Y A VSS VSS nch l=1e-06 w=2e-06 wf=2 
XM0_0 Y B net9 net9 pch l=1e-06 w=4e-06 
XM1_0 net9 A VDD VDD pch l=1e-06 w=4e-06 
*RC for wire 0
*RC for wire A
*RC for wire B
*RC for wire GND
*RC for wire net9
*RC for wire VDD
*RC for wire VSS
*RC for wire Y

* end of instance section for NOR2X1_0
VVDD VDD 0 1.8
VVSS VSS 0 0
.inc '/home/saul/projects/KISTA/liberate_workdir/characterize/MODELS/include_tt.scs'
.option parhier=local redefinedparams=ignore
simulator lang=spectre
altos_op1 options global_param_override=ignore implicit_subckt_param=yes
simulator lang=spice


.temp 25
VA A 0  pwl(
+ 0 0.000)
VB B 0  pwl(
+ 0 1.800)

.param Y_cap=1.0000000e-20
C0_0 Y 0 Y_cap
.nodeset v(Y) 0



.option numdgt=6 measdgt=6 ingold=2 save=nooutput gmin=1e-14 pivtol=1e-15
.tran 1.00e-12 1e-12 

.end

