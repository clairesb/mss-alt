#!/bin/bash
#SBATCH --job-name=ss_infer_updated
#SBATCH --partition=multigpu
#SBATCH --gres=gpu:2
#SBATCH --time=08:00:00
#SBATCH --cpus-per-task=16
#SBATCH --mem=64G
#SBATCH --output=logs/%x_%j.out
#SBATCH --error=logs/%x_%j.err

pixi run -e cuda python ss_infer_updated.py\
	--num_iterations 5\
	--length long

echo "Finished at $(date)"
