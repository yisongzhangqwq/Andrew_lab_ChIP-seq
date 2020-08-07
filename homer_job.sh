#!/bin/bash --login
#$ -cwd              # Job will run in the current directory (where you ran qsub)
                     # Nothing specified to request more cores = default 1 core
module load apps/binapps/homer/4.10.3

findMotifsGenome.pl /mnt/fls01-home01/q66748yz/HOMER/hglft_genome_52be3_e60900.bed mm8 /mnt/fls01-home01/q66748yz/HOMER/peakAnalysis -preparsedDir /mnt/fls01-home01/q66748yz/HOMER/tmp -size 250 -len 8,20
