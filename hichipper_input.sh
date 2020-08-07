#!/bin/bash --login
#$ -cwd              # Job will run in the current directory (where you ran qsub)
                     # Nothing specified to request more cores = default 1 core  

module load apps/python/2.7.15/gcc-4.8.5
module load apps/hichipper/0.7.5/gcc-4.8.5+python-2.7.15+setuptools-24.0.1+numpy-1.10.4+macs-2.1.2+R-3.4.2+bioconductor-3.4
hichipper --out try15 /mnt/fls01-home01/q66748yz/test1.yaml 

