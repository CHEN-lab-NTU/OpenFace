import os
import glob
import sys
subject_id = sys.argv[1]

fpath = '/home/parallels/Desktop/Parallels_Shared_Folders/Home/OpenFace/preprocessed/'
outpath = subject_id
videos_list = glob.glob(os.path.join(fpath, 'P*_13_*'))
for video in videos_list :
    index = video.split('_')[-1][0]
    if index == '0' or index == '1' or index == '2' or index == '3' or index == '4' or index == '5' or index == '6' or index == '8' or index == '9' or index == '10' or index == '11' or index == '12':
        continue
    else:
        os.system(f'/home/parallels/opencv-4.1.0/build/OpenFace/build/bin/FeatureExtraction -f {video} -out_dir {outpath} -oc H264')
    
