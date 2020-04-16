#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "ERROR! Usage: help/video filepath"
    exit
fi

./darknet detector demo data/yolov3_obj.data cfg/yolov3_obj.cfg backup/yolov3_obj_600.weights $1 -prefix pictures -gpus 0
ffmpeg -i pictures_%08d.jpg video.mp4
ffmpeg -i video.mp4 -i $1 $2

rm pictures_*.jpg video.mp4
