#!/bin/bash --login
#$ -cwd              # Job will run in the current directory (where you ran qsub)
                     # Nothing specified to request more cores = default 1 core

module load libs/pysam/0.15.2 ###load pysam
python /mnt/fls01-home01/mqbpwso2/Scripts/Python_scripts/fix_isize.py /mnt/fls01-home01/q66748yz/scratch/bowtie2_73.1_sorted_blacklist.bam /mnt/fls01-home01/q66748yz/scratch/bowtie2_73.1_sorted_blacklist_fixed.bam
