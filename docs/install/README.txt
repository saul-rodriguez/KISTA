**************************************************************************
* Instructions to create a Virtuoso working directory for KISTA 1UM CMOS *
**************************************************************************

Rev 1.0
Author: Saul Rodriguez

Steps:

1) Create a new directory for the new project and enter in it: 

mkdir myworkdir
cd myworkdir

2) copy the install_workdir.sh script to the new directory:

cp /afs/kth.se/misc/projects/ict/ektlab/PDK/KISTA/docs/install/install_workdir.sh .

3) run the script:

source install_workdir.sh

4) set the environment variables for the Cadence tools:

source init_kth.se

5) Start virtuoso:

virtuoso &



