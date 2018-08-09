# CAED2018 - final version (ready for hand in)
Scripts used for the course CAED - analysis of subjects 2, 8, 14, 18, 27, 31, 36, 40, 47, 48, data from https://openneuro.org/datasets/ds000109/versions/0001

Additional information about the scripts can be found in the scripts themselves

Steps that were followed in analysis:

## Step 1. Preprocessing

scripts used: 0_reorient_brainextr.sh / 0_motion_assessment.sh

1 = 0_reorient_brainextr.sh - this script loops over subjects to reorient the functional data image and to create the masks for the brain extraction

2 = 0_motion_assessment.sh - this script loops over subjects to assess motion

## Step 2. Level 1 analyses: within run analyses    

scripts used: 1_design_template.fsf / 1_fsflevel1.sh / 1_level1.sh

1 = 1_design_template.fsf - this is the design template that is created by using the GUI for 1 run for 1 subject for level 1 analysis, which was subsequently edited to make it able to loop over runs and subjects

2 = 1_fsflevel1.sh - this script creates a design template for all runs for all subjects, which can afterwards be used to run the level 1 analyses

3 = 1_level1.sh - this script loops the level 1 analyses over runs and subjects

## Step 3. Level 2 analyses: within subject analyses

scripts used: 2_design_templatel2.fsf / 2_fsflevel2.sh / 2_level2.sh

1 = 2_design_templatel2.fsf - this is the design template that is created by using the GUI for 1 subject for level 2 analysis, which was subsequently edited to make it able to loop over subjects

2 = 2_fsflevel2.sh - this script creates a design template for all subjects, which can afterwards be used to run the level 2 analyses

3 = 2_level2.sh - this script loops the level 2 analyses over subjects

## Step 4. Group level analyses

scripts used: 3_design_template_Z2.3.fsf / 3_design_template_Z3.1.fsf / QA_group_level.sh

1 = the group level is performed entirely in the GUI, but the design templates can be used to see which options I chose in the GUI. There is 1 design template in which the Z-threshold for clustering is 2.3 and 1 template for which this is 3.1

2 = QA_group_level.sh - this script creates the txt files with the brain regions, using the Harvard-Oxford Cortical Structural Atlas + overlays the thresholded image on the brain image
# CAED
