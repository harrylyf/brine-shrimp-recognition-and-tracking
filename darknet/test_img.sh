#!/bin/bash

#SBATCH -N 1
#SBATCH -n 1
#SBATCH -p volta-gpu
#SBATCH -t 01-00:00:00
#SBATCH --qos gpu_access
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mem=16g
#SBATCH --mail-user=yufan@live.unc.edu

module add cuda/10.1
make

./darknet detector test data/yolov3_obj.data cfg/yolov3_obj.cfg backup/yolov3_obj_final.weights -ext_output < test.txt > result.txt