---
tags: CHEN Lab
---
> [name=Ben]
> [time=Wed, Jan 20, 2021 10:03 PM]

# OpenFace SOP

## Introduction
> [**OpenFace 2.2.0: a facial behavior analysis toolkit**](https://github.com/TadasBaltrusaitis/OpenFace), 
> which is a fantastic API for Face landmarking, AU prediction etc... But in our study, we just need to use its [AU](https://github.com/TadasBaltrusaitis/OpenFace/wiki/Action-Units) prediction ability. 
> 
> This document will contain the workflow about topic, errors I had been faced and how I fixed it.


## Install
> This is a terrible experience, I had tried a sea of installation methods but all of them are wrong. Due to face too much failed, I guessed the problems were origined from our Operation System (Darwin). Hence, I tried to using Linux virtual environment on our Mac Pro.
> Finally, I builded up OpenFace system successfully.

> This is a website for teaching people how to install OpenFace on Unix system (Linux is a sub Unix system). [How to install OpenFace and Extract Facial Features.](https://learnaitech.com/how-to-install-and-extract-facial-features-using-openface/)
> I pretty recommend read this blog if you need to install it, which is really helpful.

## Workflow 
> **Preprocess**:
>>1. Copy videos from `/SharedExperience/Data/Alone_data/subject/` folder to the `/OpenFace/input` 
>>2. Open the first video and check starting points in second.
>>3. Merge all videos to build a `merged.mp4`
>>4. Use [**facesync**](https://github.com/jcheong0428/facesync) to offset the merged video, and which will output a merged_trimmed.mp4 (p.s: our target_audio is `Doc_Pat_Trig.wav`, located in `OpenFace/code`)

> **Execution:**
>>1. Make ssh connection to Ubuntu virtual machine in Mac Pro (`ssh -p 1000 parallels@127.0.0.1`)
>>2. Do OpenFace's `FeatureExtraction` on merged_trimmed.mp4, and the output files will be in `/SharedExperience/Data/Alone_data/OpenFace_output`

## SOP
> As lazy as a sloth, I don't want to do these works by hand. So, I build two codes (preprocess.sh & execute.sh) to do the jobs automatically !
> You guys just need to type `bash preprocess.sh` and `bash execute.sh`, and the jobs will be done for a few hours.


>>:warning: Before you tpye `bash preprocess.sh`, you need to make sure the input file is empty. And you should check **subject_ID** in `execute.sh` is right.

>Oh hang on, please clean the videos in `/OpenFace/input `and close the connection between Mac and Synology before you leave Lab due to security, thanks a lot!

## Appendix
> [Vim](http://linux.vbird.org/linux_basic/0310vi.php)
> 
> modify subject ID