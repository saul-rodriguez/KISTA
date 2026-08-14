###############################
# Set path to CADENCE GPDK045 #
###############################

#export X_DIR=/opt/pdk/xfab/XKIT
#export PATH=$X_DIR/x_all/cadence/xenv:$PATH

#environment variables copied from XFAB_AMS_refkit_2_5_1
#export MG_ENABLE_DUMMYPARAMS=true
#export CDS_XL_DUMMY_BA_FLOW=true
#export MG_ENABLE_PTOT=true
#export MG_USE_EXTRAS=true
#export REFKIT_DIR=$PWD
#export CICNG_129_Containers=1
export CDS_IGNORE_CONTAINER=ALL

################################
# Set path to Cadence Virtuoso #
################################ 
export CDSHOME=/opt/tools/cadence/installs/IC251
export PATH=$PATH:$CDSHOME/tools/bin:$CDSHOME/tools/dfII/bin
export CDS_AUTO_64BIT=ALL

## CDS_Netlisting_Mode
## Interpretion of CDF properties during netlisting
export CDS_Netlisting_Mode="Analog"


##########################################
# Set path to SPECTRE/MMSIM (simulators) #
##########################################
export MMSIMHOME=/opt/tools/cadence/installs/SPECTRE241
export PATH=$PATH:$MMSIMHOME/tools/bin
#export CDS_AHDLCMI_ENABLE=NO


############################
# Set ASSURA DRC/LVS tools #
############################
#export ASSURAHOME=/opt/tools/cadence/installs/ASSURA41
#export PATH=$PATH:$ASSURAHOME/tools/bin:$ASSURAHOME/tools/assura/bin
#export ASSURA_AUTO_64BIT=ALL

#########################
# Set PVS DRC/LVS tools #
######################### 
export PVSHOME=/opt/tools/cadence/installs/PVS241
export PATH=$PATH:$PVSHOME/tools/bin

################################
# Set QRC Parasitic Extraction #
################################
export QRC_HOME=/opt/tools/cadence/installs/QUANTUS241
export PATH=$PATH:$QRC_HOME/tools/bin
export QRC_ENABLE_EXTRACTION="t"

######################
# Set XCELIUM tools  #
######################
export IUSHOME=/opt/tools/cadence/installs/XCELIUM2409
export PATH=$PATH:$IUSHOME/tools/bin/64bit:$IUSHOME/tools/bin
export CDS_BIND_TMP_DD=true


###################
# GENUS RC RTL Compiler #
###################
export GENUSHOME=/opt/tools/cadence/installs/GENUS211
export PATH=$PATH:$GENUSHOME/tools.lnx86/bin

######################################
# INNOVUS DIGITAL PLACE AND ROUTE    #
######################################
export INNOVUS=/opt/tools/cadence/installs/INNOVUS211
export PATH=$PATH:$INNOVUS/tools/bin/64bit:$INNOVUS/tools/bin
export EDIHOME=$INNOVUS
export CDS_ENABLE_EXP_PCELL=TRUE

############
# Licenses #
############

# Cadence license
export LM_LICENSE_FILE=3000@lic08.ug.kth.se

# Mentor license (Calibre)
export MGLS_LICENSE_FILE=1727@lic02.ug.kth.se
