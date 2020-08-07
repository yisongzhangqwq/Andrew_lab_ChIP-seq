#!/bin/bash --login
#$ -cwd              # Job will run in the current directory (where you ran qsub)
                     # Nothing specified to request more cores = default 1 core

# Load any required modulefiles
module load apps/dpsf libs/gcc/system
module load apps/bowtie2/2.2.6/gcc-4.8.5

# -N means mismatches 

/opt/gridware/depots/8e896c5a/el7/pkg/apps/bowtie2/2.3.0/gcc-4.8.5/bowtie2  -N 1 -I 0 -X 2000 --dovetail -x /mnt/fls01-home01/q66748yz/scratch/MM9 -1 /mnt/fls01-home01/q66748yz/data/output_forward_ERR2791573_2.fastq.gz -2 /mnt/fls01-home01/q66748yz/data/output_reverse_ERR2791573_2.fastq.gz -S bowtie2_73_2.sam


