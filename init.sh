################################
# Set path to XFAV environment #
################################
#export X_DIR=/pkg/xfab/XKIT
#export PATH=$X_DIR/x_all/cadence/xenv:$PATH

#environment variables copied from XFAB_AMS_refkit_2_5_1
#export MG_ENABLE_DUMMYPARAMS=true
export CDS_XL_DUMMY_BA_FLOW=true
export MG_ENABLE_PTOT=true
export MG_USE_EXTRAS=true
export REFKIT_DIR=$PWD

################################
# Set path to Cadence Virtuoso #
################################ 
export CDSHOME=/pkg/cadence/installs/IC618
#export CDSHOME=/pkg/cadence/installs/IC617
export PATH=$PATH:$CDSHOME/tools/bin:$CDSHOME/tools/dfII/bin
export CDS_AUTO_64BIT=ALL

## CDS_Netlisting_Mode
## Interpretion of CDF properties during netlisting
export CDS_Netlisting_Mode="Analog"

##########################################
# Set path to SPECTRE/MMSIM (simulators) #
##########################################
export MMSIMHOME=/pkg/cadence/installs/SPECTRE181
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
#export QRC_HOME=/pkg/cadence/installs/EXT191
export QRC_HOME=/pkg/cadence/installs/QUANTUS201
export PATH=$PATH:$QRC_HOME/tools/bin
export QRC_ENABLE_EXTRACTION="t"

#########################
# Set PVS DRC/LVS tools #
######################### 
export PVSHOME=/pkg/cadence/installs/PVS161
export PATH=$PATH:$PVSHOME/tools/bin

######################
# Set XCELIUM tools  #
######################
export IUSHOME=/pkg/cadence/installs/XCELIUM1803
export PATH=$PATH:$IUSHOME/tools/bin/64bit:$IUSHOME/tools/bin
export CDS_BIND_TMP_DD=true

###################
# GENUS RC RTL Compiler #
###################
#export RTL_HOME=/pkg/cadence/installs/RC142
#export PATH=$PATH:$RTL_HOME/tools.lnx86/bin
#export GENUSHOME=/pkg/cadence/installs/GENUS181
export GENUSHOME=/pkg/cadence/installs/GENUS211
export PATH=$PATH:$GENUSHOME/tools.lnx86/bin

######################################
# INNOVUS DIGITAL PLACE AND ROUTE    #
######################################
export INNOVUS=/pkg/cadence/installs/INNOVUS181
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

echo Cadence Environment Initialization for XFAB completed
echo to create a new working directory run: xkit -t xh018
echo for help: xkit -h
echo Europractice MPW options: XH018 - 6 Metal option
echo to open Cadence in a working directory: virtuoso 




