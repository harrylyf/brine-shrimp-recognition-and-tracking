#!/bin/bash

#SBATCH -N 1
#SBATCH -n 1
#SBATCH -p volta-gpu
#SBATCH -t 03-00:00:00
#SBATCH --qos gpu_access
#SBATCH --gres=gpu:2
#SBATCH --mail-type=ALL
#SBATCH --mem=16g
#SBATCH --mail-user=yufan@live.unc.edu

module add cuda/10.1
make
./darknet detector train data/yolov3_obj.data cfg/yolov3_obj.cfg darknet53.conv.74 -gpus 0,1
