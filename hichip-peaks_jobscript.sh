#!/bin/bash --login
#$ -cwd              # Job will run in the current directory (where you ran qsub)
                     # Nothing specified to request more cores = default 1 core  
#$ -l mem512

module load   apps/python3/3.6.4/gcc-4.8.5
module load bedtools...........


python3 /mnt/fls01-home01/q66748yz/hichip_peaks -i /mnt/fls01-home01/q66748yz/newdata/d1EpiLCr1/hic_results/data/d1EpiLC_REP1_L1L2 -o /mnt/fls01-home01/q66748yz/scratch/hichip-peaks_try21 -t /mnt/fls01-home01/q66748yz/scratch/hichip-peaks_try21_tem -r /mnt/fls01-home01/q66748yz/newdata/mboI_resfrag_mm9.bed

