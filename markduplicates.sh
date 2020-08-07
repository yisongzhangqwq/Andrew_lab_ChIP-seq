#!/bin/bash --login
#$ -cwd              # Job will run in the current directory (where you ran qsub)
                     # Nothing specified to request more cores = default 1 core

# Load any required modulefiles  
module load tools/java/1.8.0
module load apps/bioinf
module load apps/picard/2.1.0/bin                                                                                 
                                     
java -Xmx2g -jar /mnt/as01-data01/account_archive/mqbpjkn2/packages/picard-tools-1.115/MarkDuplicates.jar INPUT=/mnt/fls01-home01/q66748yz/scratch/bowtie2_73.2_sorted.bam OUTPUT=/mnt/fls01-home01/q66748yz/scratch/bowtie2_73.2_sorted_nodup.bam REMOVE_DUPLICATES=true METRICS_FILE=/mnt/fls01-home01/q66748yz/scratch/bowtie2_73.2_sorted_nodup_stats
