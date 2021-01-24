#!/bin/bash

# load ID
read -p "Subject ID (ex:0015): " sub_id

# load video numbers
read -p "The number of videos for the subject (5 or 6)" v_number

# Determinate facesync slide window search points
read -p "Search start point(s): " start_point
read -p "Search end point(s): " end_point

# Create a folder in Shared_experience/alone/OpenFace_output
cd /Volumes/Shared_experience/Data/Alone_data/OpenFace_output
mkdir ${sub_id}
echo "===========Folder is created down========="

# Copy videos from Shared_experience(in Synology, controled by Remi) to input(in Mac Pro's OpenFace folder)
cd /Volumes/Shared_experience/Data/Alone_data/GoPro_data/
cd ${sub_id}
cp *.MP4 /Users/laboratorychen/OpenFace/input
echo "========Copy is down==========="

# Concatenate videos
python3 /Users/laboratorychen/OpenFace/code/Merge_videos.py ${v_number}
echo "================Merge is down==================="

# Do facesync for merged video
cd /Users/laboratorychen/OpenFace/input/
python3 /Users/laboratorychen/OpenFace/code/preprocess_offset.py merged.mp4 ${start_point} ${end_point}
echo "============facesync down==============="



