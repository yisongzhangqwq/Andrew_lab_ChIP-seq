#!/bin/bash --login
#$ -cwd              # Job will run in the current directory (where you ran qsub)
                     # Nothing specified to request more cores = default 1 core

# remove blacklisted regions
module load apps/bioinf
module load apps/bedtools/2.27.1/gcc-4.8.5

intersectBed -v -abam /mnt/fls01-home01/q66748yz/scratch/bowtie2_73.2_sorted_nodup.bam -b /mnt/fls01-home01/q66748yz/scratch/mm9-blacklist.bed > /mnt/fls01-home01/q66748yz/scratch/bowtie2_73.2_sorted_blacklist.bam
