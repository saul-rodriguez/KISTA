#!/bin/bash 

echo Setting environment for Liberate 
# from Bird book
export CDS_AUTO_64BIT=ALL
#export ALTOSHOME=/opt/tools/cadence/installs/LIBERATE231
export ALTOSHOME=/opt/tools/cadence/installs/LIBERATE251


export PATH=$PATH:$ALTOSHOME/bin:$ALTOSHOME/tools.lnx86/spectre/bin


echo Setting licensing for Cadence Virtuoso


# Cadence and Mentor (Calibre) license
export LM_LICENSE_FILE=3000@lic08.ug.kth.se:29000@lic06.ug.kth.se


#export LM_LICENSE_FILE=2100@cadence.cs.ship.edu
export CDS_LIC_FILE=$LM_LICENSE_FILE
#export CDK_DIR=/opt/ncsu/ncsu-cdk-1.6.0.beta
export OA_BIT=64

echo Checking PATH
for file in `echo $PATH | tr : '\n'`; do if [ !  -d $file ]; then echo $file ERROR - Not found ; fi ; done

