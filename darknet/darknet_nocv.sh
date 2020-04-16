#!/bin/bash

#SBATCH -N 1
#SBATCH -n 1
#SBATCH -p volta-gpu
#SBATCH -t 00-00:30:00
#SBATCH --qos gpu_access
#SBATCH --gres=gpu:3
#SBATCH --mail-type=end
#SBATCH --mem=16g
#SBATCH --mail-user=yufan@live.unc.edu

module add opencv
module add cuda/10.1
make
./darknet detector train ../yolov3/data/coco1cls.data ../yolov3/cfg/yolov3.cfg darknet53.conv.74 -gpus 1,2,3
