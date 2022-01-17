export PDK_HOME=/afs/ict.kth.se/proj/ektlab/PDK/KISTA
#export PDK_HOME=/home/saul/projects/KISTA

ln -s $PDK_HOME/KISTA_SOI_TECH .
ln -s $PDK_HOME/KISTA_1UM .
ln -s $PDK_HOME/KISTA_SOI_STDLIB_TECH .
ln -s $PDK_HOME/KISTA_SOI_STDLIB .
ln -s $PDK_HOME/pvs .
ln -s $PDK_HOME/qrc .
ln -s $PDK_HOME/models .
ln -s $PDK_HOME/kista_soi_stdlib_files .


cp $PDK_HOME/display.drf .
cp $PDK_HOME/pvtech.lib .
cp $PDK_HOME/docs/install/cds.lib .
cp $PDK_HOME/docs/install/init_kth.sh .


