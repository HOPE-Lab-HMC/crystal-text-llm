#!/bin/bash

##NECESSARY JOB SPECIFICATIONS
#SBATCH --job-name=Example_SNSC_GPU  #Set the job name to Example_SNSC_GPU
#SBATCH --time=30:30:00              #Set the wall clock limit to 30hr 30min
#SBATCH --nodes=1                    #Request 1 node
#SBATCH --ntasks-per-node=1          #Request 1 task
#SBATCH --mem=128G                  #Request 128G (488GB) per node
#SBATCH --CPUs-per-task=12            #Request 1 CPU per task
#SBATCH --partition=gpu              #Specify partition to submit job to
#SBATCH --gres=gpu:h100:1            #Specify GPU(s) per node, 1 H100 GPUs
#SBATCH --output=out.txt
#SBATCH --error=err.txt

##OPTIONAL JOB SPECIFICATIONS
##SBATCH --account=157248400183      
##SBATCH --mail-type=ALL             #Send email on all job events
##SBATCH --mail-user=rodesai@hmc.edu   #Send all emails to email_address

#First Executable Line
conda activate crystal-llm
python3 llama_finetune.py --run-name 7b-test-run --model 7b