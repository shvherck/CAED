#!/bin/bash
#

# Specify 'WDIR' as the path under which folder the folder ds000109_R2.0.2 that contains the data is located.
# set WDIR_sed with \/

WDIR='/Volumes/DRIVE-N-GO/dataCAED'

WDIR_sed='\/Volumes\/DRIVE-N-GO\/dataCAED'

cd $WDIR

for x in $(ls ds000109_R2.0.2/sub-[0-4][0-9]/func/sub-[0-4][0-9]_task-theoryofmindwithmanualresponse_run-0[1-2]_bold.nii.gz
)
do
  [[ $x =~ .*(sub-..).*(run-..)_.* ]]
  SUBJECT=${BASH_REMATCH[1]}
  RUNNR=${BASH_REMATCH[2]}

  nrrun=${RUNNR: -2}
  nrsubject=${SUBJECT: -2}

  sed "s/{{RUNNR}}/${RUNNR}/g;s/{{SUBJECT}}/${SUBJECT}/g;s/{{nrrun}}/${nrrun}/g;s/{{nrsubject}}/${nrsubject}/g;s/{{WDIR}}/${WDIR_sed}/g" ${WDIR}/ds000109_R2.0.2/design_template.fsf > ${WDIR}/ds000109_R2.0.2/$SUBJECT/design_${RUNNR}.fsf

done
