#####################################################
# Set path to KTH KISTA 1UM SOI CADENCE environment #
#####################################################

#Rev 1.0 2021-11-26
#Author: S. Rodriguez

#environment variables copied from XFAB_AMS_refkit_2_5_1
#export MG_ENABLE_DUMMYPARAMS=true
export CDS_XL_DUMMY_BA_FLOW=true
export MG_ENABLE_PTOT=true
export MG_USE_EXTRAS=true
export REFKIT_DIR=$PWD

################################
# Set path to Cadence Virtuoso #
################################ 
export CDSHOME=/afs/ict.kth.se/pkg/designkits/ekt/cadence/installs/IC618
#export CDSHOME=/pkg/cadence/installs/IC618
export PATH=$PATH:$CDSHOME/tools/bin:$CDSHOME/tools/dfII/bin
export CDS_AUTO_64BIT=ALL

## CDS_Netlisting_Mode
## Interpretion of CDF properties during netlisting
export CDS_Netlisting_Mode="Analog"

##########################################
# Set path to SPECTRE/MMSIM (simulators) #
##########################################
export MMSIMHOME=/afs/ict.kth.se/pkg/designkits/ekt/cadence/installs/SPECTRE201
#export MMSIMHOME=/pkg/cadence/installs/SPECTRE181
export PATH=$PATH:$MMSIMHOME/tools/bin
#export CDS_AHDLCMI_ENABLE=NO

############################
# Set ASSURA DRC/LVS tools #
############################
#export ASSURAHOME=/pkg/cadence/installs/ASSURA41
#export PATH=$PATH:$ASSURAHOME/tools/bin:$ASSURAHOME/tools/assura/bin
#export ASSURA_AUTO_64BIT=ALL

################################
# Set QRC Parasitic Extraction #
################################
export QRC_HOME=/afs/kth.se/pkg/designkits/ekt/cadence/installs/QUANTUS201
#export QRCHOME=/afs/kth.se/pkg/designkits/ekt/cadence/installs/QUANTUS211
#export QRC_HOME=/pkg/cadence/installs/EXT191
export PATH=$PATH:$QRC_HOME/tools/bin
export QRC_ENABLE_EXTRACTION="t"

#########################
# Set PVS DRC/LVS tools #
######################### 
export PVSHOME=/afs/ict.kth.se/pkg/designkits/ekt/cadence/installs/PVS191
#export PVSHOME=/pkg/cadence/installs/PVS161
export PATH=$PATH:$PVSHOME/tools/bin

######################
# Set XCELIUM tools  #
######################
export IUSHOME=/afs/ict.kth.se/pkg/designkits/ekt/cadence/installs/XCELIUM2103
#export IUSHOME=/pkg/cadence/installs/XCELIUM1803
export PATH=$PATH:$IUSHOME/tools/bin/64bit:$IUSHOME/tools/bin
export CDS_BIND_TMP_DD=true

###################
# GENUS RC RTL Compiler #
###################
#export RTL_HOME=/pkg/cadence/installs/RC142
#export PATH=$PATH:$RTL_HOME/tools.lnx86/bin
#export GENUSHOME=/pkg/cadence/installs/GENUS181
export GENUSHOME=/afs/ict.kth.se/pkg/designkits/ekt/cadence/installs/GENUS191
export PATH=$PATH:$GENUSHOME/tools.lnx86/bin

######################################
# INNOVUS DIGITAL PLACE AND ROUTE    #
######################################
export INNOVUS=/afs/ict.kth.se/pkg/designkits/ekt/cadence/installs/INNOVUS191
#export INNOVUS=/pkg/cadence/installs/INNOVUS181
export PATH=$PATH:$INNOVUS/tools/bin/64bit:$INNOVUS/tools/bin
export EDIHOME=$INNOVUS
export CDS_ENABLE_EXP_PCELL=TRUE

############
# Licenses #
############

# Cadence license
#export LM_LICENSE_FILE=@lic1.ict.kth.se
export LM_LICENSE_FILE=5280@lic09.ug.kth.se

# Mentor license (Calibre)
export MGLS_LICENSE_FILE=1727@lic02.ug.kth.se

################
# Instructions #
################

echo Cadence Environment Initialization for KISTA 1UM SOI CMOS completed
echo to open Cadence in a working directory type: virtuoso 




