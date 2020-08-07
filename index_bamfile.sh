#!/bin/bash --login
#$ -cwd              # Job will run in the current directory (where you ran qsub)
                     # Nothing specified to request more cores = default 1 core


module load apps/samtools/1.3/gcc-4.8.5
samtools index /mnt/fls01-home01/q66748yz/scratch/bowtie2_69.1_sorted2_blacklist.bam

