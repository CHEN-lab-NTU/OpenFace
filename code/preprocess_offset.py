import os
import sys
import cv2
from facesync.facesync import facesync
fpath = '/Users/laboratorychen/OpenFace'

video = sys.argv[1]
print(f'Offset video: {video}')
start_point = int(sys.argv[2]) # search_start point in seconds for facesync
end_point = int(sys.argv[3]) # search_end point in seconds for facesync
video_files = [video]
target_audio = fpath + '/code/Doc_Pat_Trig.wav'

fs = facesync(video_files=video_files,target_audio=target_audio) # Intialize facesync class
fs.extract_audio() # Extracts audio from video.MP4
fs.find_offset_corr(search_start=start_point ,search_end=end_point)
print(f'offset point: {fs.offsets}')
fs.trim_vids(offsets=fs.offsets)