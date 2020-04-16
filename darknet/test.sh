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
module add ffmpeg
make

sh ./output.sh test/glassbeads_24h_10.mp4 glassbeads_24h_10_output.mp4

