#!/bin/bash --login
#$ -cwd              # Job will run in the current directory (where you ran qsub)
                     # Nothing specified to request more cores = default 1 core

module load  apps/macs/2.1.2/gcc-4.8.5+python-2.7.8+numpy-1.10.4

####wrongmacs2 callpeak -t /mnt/fls01-home01/q66748yz/scratch/bowtie2_73.1_sorted2_blacklist_fixed.bam  -n macs2_name -- keep-dup all -q 0.01 -g mm -f BAMPE --call-summits

macs2 callpeak -t /mnt/fls01-home01/q66748yz/scratch/bowtie2_69.1_sorted2_blacklist_fixed.bam -c #conrol bamfile(73)  -n macs2_69_1 -q 0.01 -g mm -f BAMPE --call-summits

macs2 callpeak -t /mnt/fls01-home01/q66748yz/scratch/bowtie2_70.1_sorted2_blacklist_fixed.bam -c #conrol bamfile(73)  -n macs2_69_1 -q 0.01 -g mm -f BAMPE --call-summits



