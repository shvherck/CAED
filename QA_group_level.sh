#!/bin/bash

# code to generate txt files with clusters + regions
# generate the txt files with regions for Z threshold 2.3

# Specify 'cd' as the path under which folder the folder ds000109_R2.0.2 that contains the data is located.
cd /Volumes/DRIVE-N-GO/dataCAED/ds000109_R2.0.2/Group_FBS.FPS_2.3.gfeat/cope1.feat 
autoaq -i "thresh_zstat3.nii.gz" -a "Harvard-Oxford Cortical Structural Atlas" -t 0.001 -o "regions_young.txt"
autoaq -i "thresh_zstat4.nii.gz" -a "Harvard-Oxford Cortical Structural Atlas" -t 0.001 -o "regions_old.txt"

# generate the txt files with regions for Z threshold 3.1
cd /Volumes/DRIVE-N-GO/dataCAED/ds000109_R2.0.2/Group_FBS.FPS_3.1.gfeat/cope1.feat 
autoaq -i "thresh_zstat3.nii.gz" -a "Harvard-Oxford Cortical Structural Atlas" -t 0.001 -o "regions_young.txt"
autoaq -i "thresh_zstat4.nii.gz" -a "Harvard-Oxford Cortical Structural Atlas" -t 0.001 -o "regions_old.txt"

# code to overlay the thresholded image on the brain image
# young 2.3
fslview_deprecated /Volumes/DRIVE-N-GO/dataCAED/ds000109_R2.0.2/Group_FBS.FPS_2.3.gfeat/cope1.feat/thresh_zstat3.nii.gz /Volumes/DRIVE-N-GO/dataCAED/ds000109_R2.0.2/Group_FBS.FPS_2.3.gfeat/bg_image.nii.gz
# old 2.3
fslview_deprecated /Volumes/DRIVE-N-GO/dataCAED/ds000109_R2.0.2/Group_FBS.FPS_2.3.gfeat/cope1.feat/thresh_zstat4.nii.gz /Volumes/DRIVE-N-GO/dataCAED/ds000109_R2.0.2/Group_FBS.FPS_2.3.gfeat/bg_image.nii.gz
# young 3.1
fslview_deprecated /Volumes/DRIVE-N-GO/dataCAED/ds000109_R2.0.2/Group_FBS.FPS_3.1.gfeat/cope1.feat/thresh_zstat3.nii.gz /Volumes/DRIVE-N-GO/dataCAED/ds000109_R2.0.2/Group_FBS.FPS_3.1.gfeat/bg_image.nii.gz
# old 3.1
fslview_deprecated /Volumes/DRIVE-N-GO/dataCAED/ds000109_R2.0.2/Group_FBS.FPS_3.1.gfeat/cope1.feat/thresh_zstat4.nii.gz /Volumes/DRIVE-N-GO/dataCAED/ds000109_R2.0.2/Group_FBS.FPS_3.1.gfeat/bg_image.nii.gz
