#!/bin/bash
#SBATCH -J PointNet2
#SBATCH --comment "PointNet2 Semantics Segmentation"

#SBATCH --qos level0
#SBATCH -N 1
#SBATCH -p gpu
#SBATCH --gpus=1
#SBATCH --cpus-per-task=16
#SBATCH --ntasks-per-node=1
#SBATCH --time=9:59:59

#SBATCH -o "/scratch/wangzan/Projects/Pointnet2.ScanNet/outputs/slurm/%x.%j.out"
#SBATCH -e "/scratch/wangzan/Projects/Pointnet2.ScanNet/outputs/slurm/%x.%j.err"

EXP_NAME=$1

python scripts/train.py --tag=${EXP_NAME} --num_workers=4 --use_color --use_msg --npoints=8192