#!/bin/sh

wget -c https://archive.org/download/CAT_DATASET/CAT_DATASET_01.zip
wget -c https://archive.org/download/CAT_DATASET/CAT_DATASET_02.zip
wget -c http://www.vision.caltech.edu/Image_Datasets/faces/faces.tar
wget -c http://host.robots.ox.ac.uk/pascal/VOC/voc2007/VOCtest_06-Nov-2007.tar

unzip -u -d CAT_DATASET_01 CAT_DATASET_01.zip
unzip -u -d CAT_DATASET_02 CAT_DATASET_02.zip

mkdir -p faces
tar -xvf faces.tar -C faces

if [ ! -d "VOC2007" ]; then
    tar -xvf VOCtest_06-Nov-2007.tar
    mv VOCdevkit/VOC2007 VOC2007
    rmdir VOCdevkit
fi
