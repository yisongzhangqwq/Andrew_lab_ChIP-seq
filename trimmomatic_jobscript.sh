#!/bin/bash --login
#$ -cwd              # Job will run in the current directory (where you ran qsub)
                     # Nothing specified to request more cores = default 1 core

# Load any required modulefiles
module load tools/java/1.8.0
module load apps/binapps/trimmomatic/0.39


# Now the commands to be run by the job
java -jar /mnt/fls01-home01/q66748yz/Trimmomatic/Trimmomatic-0.39/trimmomatic-0.39.jar PE /mnt/fls01-home01/q66748yz/data/ERR2791573_1.fastq.gz /mnt/fls01-home01/q66748yz/data/ERR2791573_2.fastq.gz output_forward_ERR2791573_1.fastq.gz output_forward_ERR2791573_2.fastq.gz output_reverse_ERR2791573_1.fastq.gz output_reverse_ERR2791573_2.fastq.gz ILLUMINACLIP:/mnt/fls01-home01/q66748yz/Trimmomatic/Trimmomatic-0.39/NexteraPE-PE.fa:2:30:10:2:keepBothReads LEADING:3 TRAILING:5 SLIDINGWINDOW:4:15 MINLEN:25
