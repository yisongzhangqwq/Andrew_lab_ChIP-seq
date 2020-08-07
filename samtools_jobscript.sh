#!/bin/bash --login
#$ -cwd              # Job will run in the current directory (where you ran qsub)
                     # Nothing specified to request more cores = default 1 core

# Load any required modulefiles

module load apps/samtools/1.3/gcc-4.8.5


samtools view -SbhF 4 -f2 -q30 /mnt/fls01-home01/q66748yz/scratch/bowtie2_70_2.sam > /mnt/fls01-home01/q66748yz/scratch/bowtie2_70_2.bam


# sort bam files:                                                                                                                                              
#module load apps/gcc/samtools/1.3.1           
samtools sort /mnt/fls01-home01/q66748yz/scratch/bowtie2_69.1_sorted_blacklist.bam  > /mnt/fls01-home01/q66748yz/scratch/69_sorted.bam
samtools index /mnt/fls01-home01/q66748yz/scratch/69_sorted.bam
