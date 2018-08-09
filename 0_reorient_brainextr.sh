#!/bin/bash

# Specify 'dirb' as the path under which folder the folder ds000109_R2.0.2 that contains the data is located.

dirb=/Volumes/DRIVE-N-GO/dataCAED
cd $dirb

# Re-orienting + brain extraction
# Brain extraction was checked manually for each subject 

for x in $(ls ds000109_R2.0.2/sub-[0-4][0-9]/func/sub-[0-4][0-9]_task-theoryofmindwithmanualresponse_run-0[1-2]_bold.nii.gz
)
do

[[ $x =~ .*(sub-..).*(run-..)_.* ]]
echo ${BASH_REMATCH[1]} ${BASH_REMATCH[2]}

fslreorient2std $x $x

y1=${BASH_REMATCH[1]}
y2=${BASH_REMATCH[2]}


if [ "$y2" == "run-01"  ]
then
bet ds000109_R2.0.2/$y1/anat/$y1\_T1w.nii.gz ds000109_R2.0.2/$y1/anat/$y1\_T1w_brain.nii.gz -R -g -0.05 -m
fi

done

# the quality of the masks can be checked using this:
# this example is for subject 2, 
fslview_deprecated ds000109_R2.0.2/sub-02/anat/sub-02_T1w.nii.gz &
# then you should add the mask file via 'add file' in fslview to overlay it and check the quality of the mask, this is the file ending on mask.nii.gzz

# for some subjects, gradient -0.05 is not good enough
# for these subjects using gradient -0.2 renders better results

bet ds000109_R2.0.2/sub-36/anat/sub-36_T1w.nii.gz ds000109_R2.0.2/sub-36/anat/sub-36_T1w_brain.nii.gz -R -g -0.2 -m
bet ds000109_R2.0.2/sub-40/anat/sub-40_T1w.nii.gz ds000109_R2.0.2/sub-40/anat/sub-40_T1w_brain.nii.gz -R -g -0.2 -m
bet ds000109_R2.0.2/sub-47/anat/sub-47_T1w.nii.gz ds000109_R2.0.2/sub-47/anat/sub-47_T1w_brain.nii.gz -R -g -0.2 -m

