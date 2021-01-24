#!/bin/bash

# out_dir should be changed to current subject_id
ssh -p 1000 parallels@127.0.0.1 "cd /home/parallels/Desktop/Parallels_Shared_Folders/Shared_experience/Data/Alone_data/OpenFace_output/; pwd;
/home/parallels/opencv-4.1.0/build/OpenFace/build/bin/FeatureExtraction -f ~/Desktop/Parallels_Shared_Folders/Home/OpenFace/input/merged_trimmed.mp4 -out_dir 00001 -oc H264"

echo "===============OpenFace is down==============="

