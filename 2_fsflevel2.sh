#!/bin/bash
#


# Specify 'WDIR' as the path under which folder the folder ds000109_R2.0.2 that contains the data is located.
WDIR='/Volumes/DRIVE-N-GO/dataCAED'

# set WDIR_sed with \/
WDIR_sed='\/Volumes\/DRIVE-N-GO\/dataCAED'

cd $WDIR


for x in $(ls ds000109_R2.0.2/sub-[0-4][0-9]/func/sub-[0-4][0-9]_task-theoryofmindwithmanualresponse_run-0[1-2]_bold.nii.gz
)
do
  [[ $x =~ .*(sub-..).*(run-..)_.* ]]
  SUBJECT=${BASH_REMATCH[1]}
  RUNNR=${BASH_REMATCH[2]}


  sed "s/{{SUBJECT}}/${SUBJECT}/g;s/{{WDIR}}/${WDIR_sed}/g" ${WDIR}/ds000109_R2.0.2/design_templatel2.fsf > ${WDIR}/ds000109_R2.0.2/$SUBJECT/design_level2.fsf


done
