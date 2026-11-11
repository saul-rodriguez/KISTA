# Liberate example Tcl script
# This script compares two libraries, example.lib and example_rechar.lib and
# generate lcplot input file example.gui.
#

set rundir $env(PWD)

exec mkdir -p ${rundir}/REPORTS

compare_library						\
	-verbose					\
	-abstol		0				\
	-reltol		0				\
	-gui		${rundir}/REPORTS/example.gui	\
	-report		${rundir}/REPORTS/example.rep	\
	${rundir}/LIBRARY/example_ccs.lib			\
	${rundir}/LIBRARY/example_ccs_rechar.lib 

