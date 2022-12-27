#!/bin/bash

cd ~

sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install g++-8

sudo apt-get install cmake

sudo apt-get install git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev

sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-22-dev

# start building OpenCV
sudo apt install libopencv-dev python3-opencv

# check opencv installation result
pkg-config –modversion opencv4 

# install dlib
wget http://dlib.net/files/dlib-19.13.tar.bz2
tar xf dlib-19.13.tar.bz2
cd dlib-19.13
mkdir build
cd build
cmake ..
cmake --build . --config Release
sudo make install
sudo ldconfig
cd ../..
# finish for dlib

sudo apt-get install libboost-all-dev

# install the OpenBLAS here 
git clone https://github.com/xianyi/OpenBLAS.git
cd OpenBLAS
make -j4
make install 
# if you see no errors on the screen, it finishes the install of the OpenBLAS

cd ~

# starts to install the OpenFace
git clone https://github.com/TadasBaltrusaitis/OpenFace.git

cd OpenFace
mkdir build
cd build

cmake -D CMAKE_CXX_COMPILER=g++-8 -D CMAKE_C_COMPILER=gcc-8 -D CMAKE_BUILD_TYPE=RELEASE ..
make

wget -O download_models_adjusted_by_Ben_20221227.sh https://www.dropbox.com/s/ehdvxcchhj4a9dm/download_models_adjusted_by_Ben_20221227.sh?dl=0

cd ~/OpenFace
bash download_models_adjusted_by_Ben_20221227.sh

# finish the installation of the OpenFace