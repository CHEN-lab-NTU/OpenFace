from moviepy.editor import VideoFileClip, concatenate_videoclips
import os
import glob
import sys

fpath = '/Users/laboratorychen/OpenFace/input'

video_list = sorted(glob.glob(os.path.join(fpath,'*.MP4')))
video_number = int(sys.argv[1])

i = 0
videoclips = []
while i < video_number:
    videoclips.append(VideoFileClip(video_list[i]))
    i += 1

final_clip = concatenate_videoclips(videoclips)
final_clip.write_videofile(os.path.join(fpath, "merged.mp4"))