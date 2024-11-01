#!/bin/bash

##NECESSARY JOB SPECIFICATIONS
#SBATCH --job-name=Example_SNSC_GPU  #Set the job name to Example_SNSC_GPU
#SBATCH --time=30:30:00              #Set the wall clock limit to 30hr 30min
#SBATCH --ntasks=1                   #Request 1 task
#SBATCH --mem=128G                  #Request 128G (488GB) per node
#SBATCH --output=Example_SNSC_GPU.%j #Redirect stdout/err to file
#SBATCH --partition=gpu              #Specify partition to submit job to
#SBATCH --gres=gpu:h100:1            #Specify GPU(s) per node, 1 H100 GPUs

##OPTIONAL JOB SPECIFICATIONS
##SBATCH --account=157248400183      
##SBATCH --mail-type=ALL             #Send email on all job events
##SBATCH --mail-user=rodesai@hmc.edu   #Send all emails to email_address

#First Executable Line