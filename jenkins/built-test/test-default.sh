#! tcsh -f

source /opt/sphenix/core/bin/sphenix_setup.csh -n; 

setenv workRootPath `pwd`;
setenv PATH 		$workRootPath/install/bin:${PATH}
setenv LD_LIBRARY_PATH 	$workRootPath/install/lib:${LD_LIBRARY_PATH}
setenv CALIBRATIONROOT  $workRootPath/calibrations/

env;

cd macros/macros/g4simulations/

pwd;
ls -lhc

echo "======================================================="
echo "Start test";
echo "======================================================="

/usr/bin/time -v root -b -q root -b -q 'Fun4All_G4_sPHENIX.C(10)' | & tee -a Fun4All_G4_sPHENIX.log;

ls -lhcrt

echo "Build step - test - done";



