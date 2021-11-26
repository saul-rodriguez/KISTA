#!/bin/bash 

echo Setting environment for Liberate 
# from Bird book
export CDS_AUTO_64BIT=ALL
export ALTOSHOME=/pkg/cadence/installs/LIBERATE171
export PATH=$PATH:$ALTOSHOME/bin:$ALTOSHOME/tools.lnx86/spectre/bin


echo Setting licensing for Cadence Virtuoso

# Cadence license
export LM_LICENSE_FILE=5280@lic09.ug.kth.se

#export LM_LICENSE_FILE=2100@cadence.cs.ship.edu
export CDS_LIC_FILE=$LM_LICENSE_FILE
#export CDK_DIR=/opt/ncsu/ncsu-cdk-1.6.0.beta
export OA_BIT=64

echo Checking PATH
for file in `echo $PATH | tr : '\n'`; do if [ !  -d $file ]; then echo $file ERROR - Not found ; fi ; done

