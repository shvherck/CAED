#!/bin/bash
#

# Specify 'WDIR' as the path under which folder the folder ds000109_R2.0.2 that contains the data is located.

WDIR='/Volumes/DRIVE-N-GO/dataCAED'

cd $WDIR

for x in $(ls ds000109_R2.0.2/sub-[0-4][0-9]/func/sub-[0-4][0-9]_task-theoryofmindwithmanualresponse_run-01_bold.nii.gz
)
do
  [[ $x =~ .*(sub-..).*(run-..)_.* ]]
  SUBJECT=${BASH_REMATCH[1]}
  echo $SUBJECT
  feat ds000109_R2.0.2/${SUBJECT}/design_level2.fsf
done
